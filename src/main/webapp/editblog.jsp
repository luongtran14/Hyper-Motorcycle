<%-- Document : addblog Created on : Oct 14, 2022, 12:24:19 AM Author : huyen --%>

    <%@page contentType="text/html" pageEncoding="UTF-8" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
          <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
          <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
          <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        </head>

        <body>
          <form class="form-horizontal" method="post" action="updateblog">
            <fieldset>
            
            <!-- Form Name -->
            <legend>BLOG</legend>
            
            <!-- Text input-->
            <div class="form-group">
              <label class="col-md-4 control-label" for="product_id">ID</label>  
              <div class="col-md-4">
              <input id="product_id" name="bid" class="form-control input-md" required="" type="text" value="${Blog.blogID}" readonly>
                
              </div>
            </div>
            
            <!-- Text input-->
            <div class="form-group">
              <label class="col-md-4 control-label" for="title">Title</label>  
              <div class="col-md-4">
              <input id="title" name="title"  class="form-control input-md" required="" type="text" value="${Blog.title}">
                
              </div>
            </div>
            
            <!-- Text input-->
            <div class="form-group">
              <label class="col-md-4 control-label" for="Image">Image</label>  
              <div class="col-md-4">
              <input id="image" name="image"  class="form-control input-md"  type="text" value="${Blog.image}">
                
              </div>
            </div>
            
            <!-- Select Basic -->
            <!-- <div class="form-group">
              <label class="col-md-4 control-label" for="product_categorie">PRODUCT CATEGORY</label>
              <div class="col-md-4">
                <select id="product_categorie" name="product_categorie" class="form-control">
                </select>
              </div>
            </div> -->
            
            <!-- Text input-->
            <div class="form-group">
              <label class="col-md-4 control-label" for="blogContent">Content</label>  
              <div class="col-md-4">
              <input class="form-control" id="blogContent" name="blogContent" value="${Blog.blogContent}" >
              </div>
            </div>
            
            <!-- Text input-->
            <!-- <div class="form-group">
              <label class="col-md-4 control-label" for="product_weight">PRODUCT WEIGHT</label>  
              <div class="col-md-4">
              <input id="product_weight" name="product_weight" placeholder="PRODUCT WEIGHT" class="form-control input-md" required="" type="text">
                
              </div>
            </div>
             -->
            <!-- Textarea -->
            <!-- <div class="form-group">
              <label class="col-md-4 control-label" for="product_description">PRODUCT DESCRIPTION</label>
              <div class="col-md-4">                     
                <textarea class="form-control" id="product_description" name="product_description"></textarea>
              </div>
            </div>
            
            <!-- Textarea -->
            <!-- <div class="form-group">
              <label class="col-md-4 control-label" for="product_name_fr">PRODUCT DESCRIPTION FR</label>
              <div class="col-md-4">                     
                <textarea class="form-control" id="product_name_fr" name="product_name_fr"></textarea>
              </div>
            </div> -->
            
            <!-- Text input-->
            <!-- <div class="form-group">
              <label class="col-md-4 control-label" for="percentage_discount">PERCENTAGE DISCOUNT</label>  
              <div class="col-md-4">
              <input id="percentage_discount" name="percentage_discount" placeholder="PERCENTAGE DISCOUNT" class="form-control input-md" required="" type="text">
                
              </div>
            </div>
            
              <!--Text input-->
            <!-- <div class="form-group">
              <label class="col-md-4 control-label" for="stock_alert">STOCK ALERT</label>  
              <div class="col-md-4">
              <input id="stock_alert" name="stock_alert" placeholder="STOCK ALERT" class="form-control input-md" required="" type="text">
                
              </div>
            </div> -->
            
            <!-- Search input-->
            <!-- <div class="form-group">
              <label class="col-md-4 control-label" for="stock_critical">STOCK CRITICAL</label>
              <div class="col-md-4">
                <input id="stock_critical" name="stock_critical" placeholder="STOCK CRITICAL" class="form-control input-md" required="" type="search">
                
              </div>
            </div> -->
            
            <!-- Search input-->
            <!-- <div class="form-group">
              <label class="col-md-4 control-label" for="tutorial">TUTORIAL</label>
              <div class="col-md-4">
                <input id="tutorial" name="tutorial" placeholder="TUTORIAL" class="form-control input-md" required="" type="search">
                
              </div>
            </div> -->
            
            <!-- Search input-->
            <!-- <div class="form-group">
              <label class="col-md-4 control-label" for="tutorial_fr">TUTORIAL FR</label>
              <div class="col-md-4">
                <input id="tutorial_fr" name="tutorial_fr" placeholder="TUTORIAL FR" class="form-control input-md" required="" type="search">
                
              </div>
            </div> --> 
            
            <!-- Text input-->
            <!-- <div class="form-group">
              <label class="col-md-4 control-label" for="online_date">ONLINE DATE</label>  
              <div class="col-md-4">
              <input id="online_date" name="online_date" placeholder="ONLINE DATE" class="form-control input-md" required="" type="text">
                
              </div>
            </div> -->
            
            <!-- Text input-->
            <!-- <div class="form-group">
              <label class="col-md-4 control-label" for="author">AUTHOR</label>  
              <div class="col-md-4">
              <input id="author" name="author" placeholder="AUTHOR" class="form-control input-md" required="" type="text">
                
              </div>
            </div> -->
            
            <!-- Text input-->
            <!-- <div class="form-group">
              <label class="col-md-4 control-label" for="enable_display">ENABLE DISPLAY</label>  
              <div class="col-md-4">
              <input id="enable_display" name="enable_display" placeholder="ENABLE DISPLAY" class="form-control input-md" required="" type="text">
                
              </div>
            </div> -->
            
            <!-- Text input-->
            <!-- <div class="form-group">
              <label class="col-md-4 control-label" for="comment">COMMENT</label>  
              <div class="col-md-4">
              <input id="comment" name="comment" placeholder="COMMENT" class="form-control input-md" required="" type="text">
                
              </div>
            </div> -->
            
            <!-- Text input-->
            <!-- <div class="form-group">
              <label class="col-md-4 control-label" for="approuved_by">APPROUVED BY</label>  
              <div class="col-md-4">
              <input id="approuved_by" name="approuved_by" placeholder="APPROUVED BY" class="form-control input-md" required="" type="text"> -->
                
             <!-- File Button --> 
            <!-- <div class="form-group">
              <label class="col-md-4 control-label" for="filebutton">main_image</label>
              <div class="col-md-4">
                <input id="filebutton" name="filebutton" class="input-file" type="file">
              </div>
            </div> -->
            <!-- File Button --> 
            <!-- <div class="form-group">
              <label class="col-md-4 control-label" for="filebutton">auxiliary_images</label>
              <div class="col-md-4">
                <input id="filebutton" name="filebutton" class="input-file" type="file">
              </div>
            </div> -->
            
            <!-- Button -->
            <div class="form-group">
              <label class="col-md-4 control-label" for="singlebutton">Single Button</label>
              <div class="col-md-4">
                <a href="blogmanagement"><input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel"></a>
             
                <button type="submit" id="singlebutton" name="singlebutton" class="btn btn-primary">Edit</button>
                <a href="blogmanagement"><button type="button" class="btn btn-primary">Back to manage blog</button></a>   
              </div>
              </div>
            
            </fieldset>
            </form>
            
                
        </body>

        </html>