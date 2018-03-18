#!groovy
@Library('TestRunner') _

// For more information about TestRunner please visit https://github.com/saucelabs/pipeline-test-runner

def test = {
    sh "./codecept.phar build"
    if (env.ENVIRONMENT) {
        sh "./codecept.phar run --env ${env.ENVIRONMENT} -vv"
    } else {
        sh "./codecept.phar run -vv"
    }
}

TestRunner {
    useDockerFile = true
    collectJunitReport = false
    steps = test
}
