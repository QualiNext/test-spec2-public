import aws_cdk as core
import aws_cdk.assertions as assertions

from hello_cdk_python.hello_cdk_python_stack import HelloCdkPythonStack

# example tests. To run these tests, uncomment this file along with the example
# resource in hello_cdk_python/hello_cdk_python_stack.py
def test_sqs_queue_created():
    app = core.App()
    stack = HelloCdkPythonStack(app, "hello-cdk-python")
    template = assertions.Template.from_stack(stack)

#     template.has_resource_properties("AWS::SQS::Queue", {
#         "VisibilityTimeout": 300
#     })