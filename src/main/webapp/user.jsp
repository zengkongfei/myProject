<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8"  %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
     <link rel="stylesheet" href="admin/css/bootstrap.min.css">
 	 <link rel="stylesheet" href="admin/css/AdminLTE.min.css">
</head>
<body>
<section class="content"> 
   <div class="box box-primary">
       
       <form class="form-horizontal">
              <div class="box-body">
                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-2 control-label">账户标识</label>

                  <div class="col-sm-6">
                    <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
                  </div>
                </div>
                <div class="form-group">
                  <label for="inputPassword3" class="col-sm-2 control-label">邮箱地址</label>

                  <div class="col-sm-6">
                    <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
                  </div>
                </div>
                <div class="form-group">
                  <label for="inputPassword3" class="col-sm-2 control-label">邮箱授权码</label>

                  <div class="col-sm-6">
                    <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
                  </div>
                </div>
                <div class="form-group">
                  <label for="inputPassword3" class="col-sm-2 control-label">用户名</label>

                  <div class="col-sm-6">
                    <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
                  </div>
                </div>
                <div class="form-group">
                  <label for="inputPassword3" class="col-sm-2 control-label">邮箱服务器地址</label>

                  <div class="col-sm-6">
                    <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
                  </div>
                </div>
                
                 <div class="" >
                <button type="button" class="btn btn-primary btn-search f_save">
                	确定
                </button>
      			<button type="button"  class="btn l_reset" onclick="javascript:history.go(-1);">
      				重置
      			</button>
      		</div>
              </div>
            
            </form>
   </div>
</section>

</body>
</html>