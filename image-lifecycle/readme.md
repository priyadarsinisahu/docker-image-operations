# Docker-Image-Lifecycle
The Docker image lifecycle can be understood as:

Application Code
      ↓
Dockerfile
      ↓
docker build
      ↓
Docker Image
      ↓
Tag Image
      ↓
Push to Registry
      ↓
Pull from Registry
      ↓
Create Container
      ↓
Run Container
      ↓
Stop / Remove Container
      ↓
Update Image
      ↓
Push New Version
      ↓
Delete Old Images


Complete Lifecycle: Journey from writing application code to building, storing, running, updating, and deleting an image.

"The Docker image lifecycle starts with application code and a Dockerfile. We use docker build to create an image consisting of multiple layers. We tag the image with a version and push it to a container registry such as JFrog or ECR. During deployment, the target environment pulls the image from the registry and creates containers from it. Containers can be started, stopped, restarted and eventually removed, while the image remains available for reuse. When the application changes, we build a new image version rather than modifying the existing image, test and scan it, push it to the registry, and deploy the new version."

|--------------------------------------------------------------------------------|
| Component                    | Meaning                                         |
| ---------------------------- | ----------------------------------------------- |
| **Dockerfile**               | Recipe/instructions                             |
| **Image**                    | Packaged, immutable application template        |
| **Container**                | Running/isolated instance of an image           |
| **Registry**                 | Remote storage for images                       |
| **Tag**                      | Human-readable image version/reference          |
| **Layer**                    | Read-only filesystem building block of an image |
| **Container writable layer** | Runtime changes made by a container             |
|--------------------------------------------------------------------------------|

