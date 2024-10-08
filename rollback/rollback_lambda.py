import boto3

def lambda_handler(event, context):
    client = boto3.client("organizations")
    
    # Specify the rollback SCP version
    response = client.update_policy(
        PolicyId="p-xxxxxxxxxx",
        Content=open("/path_to_version/scp-policies/version_1.json", "r").read(),
        Description="Rolling back to version 1"
    )
    
    return response
