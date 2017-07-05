#!groovy

pipeline {
    agent any

    stages {
        stage("staging test") {
            when {
                expression { params.APPIUM_ENDPOINT == 'appium.staging.testobject.org' }
            }
            steps {
                lock (resource: params.TESTOBJECT_DEVICE) {
                    sh "chmod u+x docker-build.sh && chmod u+x docker-run.sh"
                    sh "./docker-build.sh"
                    sh "./docker-run.sh $TESTOBJECT_DEVICE $TESTOBJECT_APPIUM_VERSION $TESTOBJECT_API_KEY $APPIUM_ENDPOINT"
                }
            }
        }
        stage("test") {
            when {
                 expression { params.APPIUM_ENDPOINT != 'appium.staging.testobject.org' }
            }
            steps {
                sh "chmod u+x docker-build.sh && chmod u+x docker-run.sh"
                sh "./docker-build.sh"
                sh "./docker-run.sh $TESTOBJECT_DEVICE $TESTOBJECT_APPIUM_VERSION $TESTOBJECT_API_KEY $APPIUM_ENDPOINT"
            }
        }
    }

    post {
        failure {
            script {
                if (params.APPIUM_SERVER == 'http://appium.testobject.com/wd/hub') {
                    slackSend channel: "#${env.SLACK_CHANNEL}", color: "bad", message: "`${env.JOB_BASE_NAME}` failed (<${BUILD_URL}|open>)", teamDomain: "${env.SLACK_SUBDOMAIN}", token: "${env.SLACK_TOKEN}"
                }
            }
        }
    }
}
