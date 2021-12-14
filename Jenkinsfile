pipeline {
  agent any
  stages {
    stage ('Print Commit and Branch') {
      steps {
        echo "$GIT_BRANCH"
        sh 'printenv'
      }
    }

    stage('Install dependencies') {
      steps {
        sh 'npm install'
        sh 'npm --version'
        sh 'node --version'
      }
    }

    stage('Build dependencies') {
      steps {
        sh 'npm run build'
      }
    }

    stage('Test') {
      steps {
        sh 'npm run test'
      }
    }

    stage('CDK synth') {
      steps {
        sh 'cdk synth'
      }
    }
  }
}
