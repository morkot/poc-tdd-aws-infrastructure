# poc-tdd-aws-infrastructure

PoC of developing and delivering infrastructure as code to AWS starting from clean account.

## TDD for IaaC notes

Infrastructure testing is quite wild field in terms of testing and TDD especially. The reasons are:

- it is quite hard
- immaturity of IaaC in general

I was surprised that I didn't find lots of examples of infra TDD with Python. This field mostly occupied by Ruby and related tools. I think this is due to the fact that Puppet and Chef are written in Ruby. Tools like awsspec and test-kitchen provide a decent tool set for infrastructure testing and it is quite easy to use them without nearly any knowledge of Ruby.

If we are talking about cloud infrastructure, then usually code is configuration translated to set of API calls tp cloud provider. This means the most valuable test types are smoke, integration, acceptance and end-to-end.

## Development workflow

1. Get dependencies
2. Add tests
3. Add code
4. Run kitchen
5. Repeat from #2
6. After tests passed release as tag and/or docker image

### Install dependencies

```bash
rbenv install
bundle install --deployment
tfenv install
bundle exec kitchen test
```
