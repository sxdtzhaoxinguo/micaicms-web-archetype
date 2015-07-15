描述：通过maven的自定义archetype创建自定义的项目框架

1.下载项目到你的本地workspace

2.进入到你该项目的根目录(也就是pom.xml所在的目录)

3.执行命令把该项目安装到你的本地仓库
mvn clean install

4.执行命令更新你的本地仓库的索引
mvn archetype:update-local-catalog

5.再次回到你的workspace工程目录，执行命令选择本地仓库的archetype创建项目
mvn archetype:generate -DarchetypeCatalog=local

6.选择你的archetype的编号，然后根据提示输入你自己的groupId，artifactId，packaging，version等等

7.导入创建成功的项目到eclipse，就可以使用该项目了


