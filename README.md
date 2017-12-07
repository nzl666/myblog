## API

#### 登录

##### url:http://127.0.0.1:8087/label/getlabels

##### 所需data

    {
        phone: '15900610143',
        password: '123456'
    }
    
#### 标签查询
     
##### url:http://127.0.0.1:8087/label/getlabels

##### 所需data

    {
        null
    }
    
#### 标签和文章数

##### url:http://127.0.0.1:8087/label/getlabelsandcount 

##### 所需data

    {
        null
    } 
    
####博客列表

##### url:http://127.0.0.1:8087/blog/list

#### 所需data 

    {
        pageno: 1,
        pagesize: 5,
        search: 'j'
    }
##### 返回值
        "content": {
            "currpage": 1,
            "pages": 4,
            "blogs": [
                {
                    "comment": 9,
                    "content": "xxxx",
                    "creattime": 1512616810000,
                    "id": 6,
                    "readcount": 8888,
                    "resume": "java  edk",
                    "title": "java进阶",
                    "type": 0
                }
            ],
            "count": 4
        }        