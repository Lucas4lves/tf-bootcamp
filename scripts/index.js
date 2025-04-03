const path = require('node:path')
const fs = require('node:fs')

const write_env_tfvars = (
    def_file, project_base_path, environment
) => {
    try{
        fs.mkdirSync(path.join(project_base_path, 'environments')), (err) => {
            if (err) throw err
        }
    
        fs.mkdirSync(path.join(project_base_path, 'environments', environment)), (err) => {
            if (err) throw err
        }
        fs.writeFileSync(path.join(project_base_path, 'environments', environment, 'environment.tfvars'), def_file)
    }catch(err){
        console.log("File already exists!")
    }
}

const content = `bucket_name = "from-script-bucket"
tags = {
    squad = "devops"
    scripted = "true"
}`

write_env_tfvars(content, "projects/sample-project", "dev")

//projects\infra-buckets\devops-tf-states