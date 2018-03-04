# poc-tdd-aws-infrastructure

PoC of developing and delivering infrastructure as code to AWS starting from clean account. 

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
