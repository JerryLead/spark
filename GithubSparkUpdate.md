Synchronize JerryLead/spark with apache/spark

```shell
xulijie@lijie:~ $ cd dev/IdeaProjects/TCSEspark

xulijie@lijie:TCSEspark $ git remote –v


xulijie@lijie:TCSEspark $ git checkout master
xulijie@lijie:TCSEspark $ git fetch upstream

xulijie@lijie:TCSEspark $ git checkout master
xulijie@lijie:TCSEspark $ git merge upstream/master
xulijie@lijie:TCSEspark $ git push origin master

xulijie@lijie:TCSEspark $ git checkout branch-1.6
xulijie@lijie:TCSEspark $ git merge upstream/branch-1.6
xulijie@lijie:TCSEspark $ git push origin branch-1.6

xulijie@lijie:TCSEspark $ git checkout branch-2.0
xulijie@lijie:TCSEspark $ git merge upstream/branch-2.0
xulijie@lijie:TCSEspark $ git push origin branch-2.0
```