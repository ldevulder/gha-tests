# Tests description for e2e

## `backend.e2e.spec.ts`

  - **Test:** should start loading the background services and hide progress bar
- **Describe:** requiresRestartReasons
  - **Test:** should emit connection information
  - **Test:** should detect changes
  - **Test:** should handle WSL integrations

## `credentials-server.e2e.spec.ts`

  - **Test:** should start loading the background services and hide progress bar
  - **Test:** should emit connection information
  - **Test:** should require authentication
  - **Test:** should be able to use the API
  - **Test:** ensure vtunnel proxy is ready
  - **Test:** it should complain about an unrecognized command
  - **Test:** it should complain about non-POST requests
  - **Test:** should be able to use the script
  - **Test:** complains when the limit is exceeded on the server - do an inexact check
  - **Test:** handles long
- **Describe:** should be able to detect errors
  - **Test:** it should complain when no ServerURL is given
  - **Test:** it should complain when no username is given
  - **Test:** it should not complain about extra fields
  - **Test:** reading pre-populated entries through d-c-rd
  - **Test:** dcrd store uses credHelpers

## `extensions.e2e.spec.ts`

  - **Test:** should load backend
  - **Test:** determine container engine in use
  - **Test:** wait for buildkit
  - **Test:** wait for docker context
  - **Test:** wait for docker daemon to be up
  - **Test:** build and install testing extension
  - **Test:** use extension protocol handler
- **Describe:** extension API
  - **Test:** extension UI can be loaded
  - **Test:** exposes API endpoint
- **Describe:** ddClient.extension.host.cli.exec
  - **Test:** capturing output
  - **Test:** streaming output
- **Describe:** ddClient.docker
  - **Test:** ddClient.docker.cli.exec
  - **Test:** ddClient.docker.listImages
  - **Test:** ddClient.docker.listContainers
- **Describe:** ddClient.extension.vm.cli.exec
  - **Test:** capturing output
- **Describe:** ddClient.extension.vm.service
  - **Test:** can fetch from the backend
  - **Test:** can fetch from external sources

## `lockedFields.e2e.spec.ts`

- **Describe:** Locked fields
  - **Test:** should start up
  - **Test:** should not allow a locked field to be changed via rdctl set

## `main.e2e.spec.ts`

  - **Test:** should start loading the background services and hide progress bar
  - **Test:** should land on General page
  - **Test:** should navigate to Port Forwarding and check elements
  - **Test:** should navigate to Images page
  - **Test:** should navigate to Troubleshooting and check elements

## `preferences.e2e.spec.ts`

  - **Test:** should open preferences modal
  - **Test:** should show application page and render general tab
  - **Test:** should render behavior tab
  - **Test:** should render environment tab
  - **Test:** should navigate to virtual machine and render hardware tab
  - **Test:** should render volumes tab
  - **Test:** should render network tab on macOS
  - **Test:** should render emulation tab on macOS
  - **Test:** should navigate to container engine
  - **Test:** should render allowed images tab after click on allowed images tab
  - **Test:** should navigate to kubernetes
  - **Test:** should navigate to WSL and render network tab
  - **Test:** should integrations tab
  - **Test:** should not render WSL nav item on macOS and Linux
  - **Test:** should render environment tab after close and reopen preferences modal
  - **Test:** should render container engine page after close and reopen preferences modal
  - **Test:** should render allowed image tab in container engine page after close and reopen preferences modal

## `quit-on-close.e2e.spec.ts`

  - **Test:** should quit when quitOnClose is true and window is closed
  - **Test:** should not quit when quitOnClose is false and window is closed

## `rdctl.e2e.spec.ts`

- **Describe:** Command server
  - **Test:** should load Kubernetes API
  - **Test:** should emit connection information
  - **Test:** should require authentication
  - **Test:** should emit CORS headers
  - **Test:** should be able to get settings
  - **Test:** setting existing settings should be a no-op
  - **Test:** should not update values when the /settings payload has errors
  - **Test:** should return multiple error messages
  - **Test:** should reject invalid JSON
  - **Test:** should reject empty payload
  - **Test:** version-only path of a nonexistent version should 404
  - **Test:** should not restart on unrelated changes
  - **Test:** should complain about a missing version field
  - **Test:** should complain about an invalid version field
  - **Test:** should require authentication
  - **Test:** should emit CORS headers
  - **Test:** should be able to get transient settings
  - **Test:** setting existing transient settings should be a no-op
  - **Test:** should not update values when the /transient_settings navItem payload is invalid
  - **Test:** should not update values when the /transient_settings payload has invalid current navItem name
  - **Test:** should not update values when the /transient_settings payload has invalid sub-tabs for Application preference page
  - **Test:** should not update values when the /transient_settings payload has invalid sub-tabs for Container Engine preference page
  - **Test:** should not update values when the /transient_settings payload contains sub-tabs for a page not supporting sub-tabs: WSL / Virtual Machine
  - **Test:** should not update values when the /transient_settings payload contains sub-tabs for a page not supporting sub-tabs: Kubernetes
  - **Test:** should reject invalid JSON
  - **Test:** should reject empty payload
- **Describe:** v0 API
  - **Test:** should no longer work
- **Describe:** rdctl
- **Describe:** config-file and parameters
- **Describe:** when the config-file doesnt exist
  - **Test:** it complains with no parameters
  - **Test:** it works with all parameters
  - **Test:** it complains when some parameters arent specified
- **Describe:** when a nonexistent config file is specified
  - **Test:** it fails even when all parameters are specified
  - **Test:** should show settings and nil-update settings
- **Describe:** set
  - **Test:** complains when no args are given
  - **Test:** complains when option value missing
  - **Test:** complains when non-boolean option value specified
  - **Test:** complains when invalid engine specified
  - **Test:** complains when server rejects a proposed version
- **Describe:** settings v5 migration
  - **Test:** rejects old settings
  - **Test:** accepts new settings
  - **Test:** complains about options not intended for current platform
- **Describe:** all server commands
- **Describe:** complains about unrecognized/extra arguments
  - **Test:** args.join 
- **Describe:** complains when unrecognized option are given
  - **Test:** args.join 
- **Describe:** api
- **Describe:** all subcommands
  - **Test:** complains when no args are given
  - **Test:** empty string endpoint should give an error message
  - **Test:** complains when more than one endpoint is given
- **Describe:** settings
- **Describe:** options:
- **Describe:** GET
  - **Test:** args.join 
- **Describe:** PUT
- **Describe:** from stdin
  - **Test:** args.join 
- **Describe:** --input
  - **Test:** args.join 
  - **Test:** should complain about a --input- flag
- **Describe:** from body
  - **Test:** args.join 
- **Describe:** complains when body and input are both specified
  - **Test:** args.join 
  - **Test:** complains when no body is provided
  - **Test:** invalid setting is specified
  - **Test:** complains on invalid endpoint
  - **Test:** complains on invalid unversioned endpoint
- **Describe:** getting endpoints
  - **Test:** no paths should return all supported endpoints
  - **Test:** version-only path for v0 should return only itself
  - **Test:** version-only path for v1 should return all endpoints in that version only
  - **Test:** /v2 should fail
- **Describe:** diagnostics
  - **Test:** categories
  - **Test:** it finds the IDs for Networking
  - **Test:** it 404s for a nonexistent category
  - **Test:** it finds a diagnostic check
  - **Test:** it finds all diagnostic checks
  - **Test:** it finds a diagnostic check by checkID
  - **Test:** it returns an empty array for a nonexistent category
  - **Test:** it returns an empty array for a nonexistent category with a valid ID
  - **Test:** it returns an empty array for a nonexistent checkID with a valid category
  - **Test:** it returns an empty array for a nonexistent checkID when no category is specified
- **Describe:** other endpoints
  - **Test:** it can find the about text
- **Describe:** shell
  - **Test:** can run echo
  - **Test:** can run a command with a dash-option
  - **Test:** can run a shell

## `start-in-background.e2e.spec.ts`

  - **Test:** window should appear when startInBackground is false
  - **Test:** window should not appear when startInBackground is true

## `startup-profiles.e2e.spec.ts`

  - **Test:** verify profile/settings conditions and test skips or passes
- **Describe:** problematic user profiles
  - **Test:** nonexistent settings
  - **Test:** invalid format
  - **Test:** wrong datatype in profile

## `wsl-integrations.e2e.spec.ts`

- **Describe:** WSL Integrations
  - **Test:** should open preferences modal
  - **Test:** should navigate to WSL and render integrations tab
  - **Test:** should list integrations
  - **Test:** should show checkbox states
  - **Test:** should allow enabling integration
  - **Test:** should allow disabling integration
  - **Test:** should update invalid reason

