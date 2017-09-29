#!groovy

try {
    node {
        stage("checkout") {
            checkout scm
        }
        stage("test") {
            docker.build("codeception").inside {
                sh "./codecept.phar build"
                sh "./codecept.phar run ${env.ARGS} -vv"
            }
        }
    }
    if (env.SUCCESS_NOTIFICATION_ENABLED) {
        slackSend channel: "#${env.SLACK_CHANNEL}", color: "good", message: "`${env.JOB_BASE_NAME}` passed (<${BUILD_URL}|open>)", teamDomain: "${env.SLACK_SUBDOMAIN}", token: "${env.SLACK_TOKEN}"
    }
} catch (err) {
    if (env.APPIUM_URL.contains("testobject.com") || env.FAILURE_NOTIFICATION_ENABLED) {
        slackSend channel: "#${env.SLACK_CHANNEL}", color: "bad", message: "`${env.JOB_BASE_NAME}` failed: $err (<${BUILD_URL}|open>)", teamDomain: "${env.SLACK_SUBDOMAIN}", token: "${env.SLACK_TOKEN}"
    }
    throw err
}
