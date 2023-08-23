<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="student_operation_page.aspx.vb" Inherits="SRF_final_Project.student_operation_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css' />

    <link rel="stylesheet" href="/css/style.css" />
    <script
        src="https://code.jquery.com/jquery-3.3.1.js"
        integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
        crossorigin="anonymous">
    </script>
    <script> 
        $(function () {
            $("#header").load("/dashboard_header.aspx");
            $("#options").load("/dashboard_operation.aspx");
        });

    </script>
    <style>
        h3 {
            font-size: 18px;
        }

        a:hover {
            color: White;
            transition: color 0.3s ease;
        }


        .text-center {
    display: flex; 
    justify-content: space-between; 
    flex-wrap: wrap; /* Allow items to wrap to the next line when there's not enough space */
}

.cards {
    text-align: center;
    font-family: 'PT Sans', sans-serif;
    background: #fff;
    border-radius: 2px;
    display: inline-block;
    height: 300px;
    margin: 0.8rem;
    position: relative;
    width: calc(50% - 1.6rem); /* Adjust width to make two cards fit in a row with margin */
    padding-bottom: 10px;
    box-sizing: border-box; /* Include padding and border in width calculation */
}


        .card-1 {
            box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
            transition: all 0.3s cubic-bezier(.25,.8,.25,1);
        }

            .card-1:hover {
                box-shadow: 0 14px 28px rgba(0,0,0,0.25), 0 10px 10px rgba(0,0,0,0.22);
            }

        .cards > img {
            margin-top: 35px;
        }

        .cards > H2 {
            font-family: 'PT Sans', sans-serif;
        }

        .cards > p {
            font-family: 'PT Sans', sans-serif;
            padding-left: 2.2rem;
            padding-right: 2.2rem;
        }

        .btns {
            background: #172d46;
            border: 0;
            border-radius: .375em;
            color: #fff;
            cursor: pointer;
            margin: .25em;
            padding: 0.75em 1.4em;
            font-size: 0.8em;
            transition: all .125s ease-in-out;
        }
        &:hover, &:focus
        {
            box-shadow: 0 .625em 1.25em 0 rgba(#172d46, .3);
        }

        &:active {
            box-shadow: 0 .125em .25em 0 rgba(#172d46, .3);
        }

        

        .btns--large {
            font-size: 1.25em;
        }
    </style>
</head>
<body>
    <div id="header"></div>
    <div class="main-container">
        <div class="navcontainer">
            <div id="options"></div>
        </div>
        <div class="main">
            <div class="report-container">
                <div class="report-header">
                    <h1 class="recent-Articles"> Student Operations and Reports</h1>
                </div>

                <div class="report-body">
                    <div class="assignment-list">
                        <div class="text-center">

                            <div class="cards card-1">
                                <img src="https://img.icons8.com/dusk/50/000000/domain.png" />
                                <h2>Student Details</h2>
                                <p>Click here to view & manage your website.</p>
                                <button class="btns" onclick="window.location.href='/student_enrollment.aspx'">
                                    Go to Your Website Dashboard
                                </button>
                            </div>

                            <div class="cards card-1">
                                <img src="https://img.icons8.com/dusk/64/000000/smm.png" />
                                <h2>Student Id Card Generation</h2>
                                <p>Click here to view & manage your social media accounts.</p>
                                <button class="btns" onclick="window.location.href='https://app.socialpilot.co/client/link/index'">
                                    Go To Your Social Media Dashboard
                                </button>
                            </div>

                            <div class="cards card-1">
                                <img src="https://img.icons8.com/dusk/50/000000/task.png" />
                                <h2>Student Parent Information</h2>
                                <p>Student Parent Information</p>
                                <button class="btns" onclick="window.location.href='/your-project'">View Your Project(s)</button>

                            </div>
                            <div class="cards card-1">
                                <img src="https://img.icons8.com/dusk/64/000000/calendar.png" />
                                <h2>Student Deletion From DataBase</h2>
                                <p>Click here to view your tasks, events, and appointments.</p>
                                <button class="btns" onclick="window.location.href='/your-calendar'">View Your Calendar</button>
                            </div>

                           
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    

</body>
</html>


