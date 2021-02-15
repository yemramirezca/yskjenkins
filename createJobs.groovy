pipelineJob('myspringapp') {
    definition {
        cpsScm {
            scm {
                git {
                    remote {
                        url 'https://github.com/yemramirezca/yskspringapp.git'
                    }
                    branch 'main'
                }
            }
        }
    }
}
