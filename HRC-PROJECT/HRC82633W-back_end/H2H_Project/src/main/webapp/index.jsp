<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="index.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" referrerpolicy="no-referrer" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
</head>

<body>
    <!-- header of the page consist of logo and heading -->
    <div class="header">
        <img src="./images/Group 20399.svg" alt="abc" class="abc_logo" width="233" height="52">
        <img src="./images/logo.svg" alt="logo" class="highradius_logo" width="235" height="50">
        <p>Invoice List</p>
    </div>

    <!-- body of the page -->

    <div class="table">

        <div class="nav-table">
            <!-- navigation bar for the table for add, edit and delete -->
            <button class="add-invoice" id="add-btn">
                <p><span><img src="images/Path 18189 +.svg" alt="add"  style="width: 13px;">&nbsp;&nbsp;</span>Add</p>
            </button>

            <button class="edit-invoice" id="edit-btn">
              <p><span><img src="images/Path 18191.svg" alt="add"  style="width: 13px;">&nbsp;&nbsp;</span>Edit</p>
            </button>

            <button class="delete-invoice" id="delete-btn">
              <p><span><img src="images/Path 18189-1.svg" alt="add"  style="width: 13px; color: #97A1A9; margin: 5px;">&nbsp;</span>Delete</p>
            </button>

            <div class="search-bar" id="">
                <input type="text" name="search" id="searchbox" placeholder="Search by Invoice Number"><img src="images/search-24px (3).svg" alt="add" style="margin-top: 10px;"></input>
            </div>
        </div>

        <!-- Table-Creation -->

        <div class="grid-table">
            <table class="test-set">
                <thead class="thbody">
                    <tr>
                        <td><input type="checkbox" name=""></td>
                        <td hidden>key</td>
                        <td class="row-value">Customer Name</td>
                        <td class="row-value">Customer #</td>
                        <td class="row-value">Invoice #</td>
                        <td class="row-value">Invoice Amount</td>
                        <td class="row-value">Due Date</td>
                        <td class="row-value">Predicted clear Date</td>
                        <td class="row-value">Notes</td>
                    </tr>
                </thead>
                <tbody class="tbody">


                </tbody>
                <div class="pagination">
                    <div class="pagination__btn-1" id="leftBtn"><i class="fas fa-chevron-left arrow_left"  id="arrow_left"></i></div>
                    <div class="pagination__btn-2" id="rightBtn"><i class="fas fa-chevron-right arrow_right" id="arrow_right"></i></div>
                </div>
            </table>

        </div>

        <!-- add modals for Add , Edit & Delete -->
        <!-- Add -->
        <div id="modaladd" class="Modaladd">
            <div class="add-content">
                <span class="close">&times;</span>
                <p>Add Invoice</p>
                <div class="add_body">

                    <form action="http://localhost:8080/H2HBABBA1625/dummyServlet" method="POST" class="addinvoice">

                        <label for="cusname">Customer Name<span style="color: #FF5B5B;">*</span></label>
                        <input type="text" name="cusname" id="cusname">

                        <label for="duedate" id="duedate">Due Date<span style="color: #FF5B5B;">*</span></label>
                        <input type="date" name="duedate" id="duedate"><br>

                        <label for="cusno">Customer No.<span style="color: #FF5B5B;">*</span></label>
                        <input type="text" name="cusno" id="cusno">

                        <div style="display: flex;float: right; margin-right: 30px;" class="note">
                            <label for="notes" id="note">Notes</label>
                            <textarea name="notes" id="notes" cols="30" rows="10"></textarea>
                        </div>

                        <br>

                        <label for="invoiceid">Invoice No.<span style="color: #FF5B5B;">*</span></label>
                        <input type="text" name="invoiceid" id="invoiceid"><br>

                        <label for="amount">Invoice Amount<span style="color: #FF5B5B;">*</span></label>
                        <input type="text" name="amount" id="amount"><br>
                        <div class="footer">
                            <button id="cancel">Cancel</button>
                            <button id="reset" style="margin-left:65%;">reset</button>
                            <input type="submit" id="save" value="Save" style="margin-left:10px"></Input>
                        </div>

                    </form>
                </div>


            </div>
        </div>
        <!-- Edit -->
        <div id="modaledit" class="Modaledit">

            <!-- Modal content -->
            <div class="edit-content">

                <span class="close">&times;</span>
                <p>Edit Invoice</p>

                <div class="edit_body">

                    <form action="http://localhost:8080/H2HBABBA1625/update" method="POST" class="editinvoice">

                        <input name="key_0" type="hidden" id="key">

                        <label for="invoiceamt">Invoice Amount<span style="color: #FF5B5B;"></span></label>
                        <input type="text" name="invoiceamt" id="invoiceamt"><br>

                        <div style="display: flex;float: right; margin-right: 5%;" class="enotes">
                            <label for="" id="">Notes</label>
                            <textarea name="" id="enote" cols="30" rows="5"></textarea>
                        </div>

                        <div class="footer-edit">
                            <button id="cancele">Cancel</button>
                            <button id="resete" style="margin-left:25%;">reset</button>
                            <Input type="submit" id="savee" value="Save" style="margin-left:10px;"></Input>
                        </div>
                    </form>

                </div>


            </div>

        </div>
        <!-- Delete -->
        <div id="modaldelete" class="Modaldelete">

            <!-- Modal content -->
            <div class="delete-content">

                <span class="close">&times;</span>
                <p id="deletep">Delete record(s)?</p>

                <div class="delete_body">
                    <p>You'll lose your record(s) after this action. We can't recover</p>
                    <p>them once you delete.</p>
                    <br>
                    <p>Are you sure you want to <span style="color: #FF5B5B;">permanently delete</span> them?</p>
                </div>
                <div class="footer-delete">
                    <button id="canceld" style="margin-left:60%;">Cancel</button>
                    <button id="saved">save</button>
                </div>

            </div>

        </div>

    </div>
    <script src="index.js"></script>
</body>


</html>