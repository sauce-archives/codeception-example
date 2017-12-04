#!groovy

// For more information about TestRunner please visit https://github.com/saucelabs/pipeline-test-runner

def test = {
    sh "./codecept.phar build"
    sh "./codecept.phar run --env ${env.ENVIRONMENT ?: ""} -vv"
}

TestRunner {
    dockerImage = "codeception"
    collectJunitReport = false
    steps = test
}
