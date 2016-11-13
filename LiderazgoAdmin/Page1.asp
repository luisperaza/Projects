<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title></title>
</head>
<body>
    <%
    Dim oConn, oRs
    Dim qry, connectstr
    Dim db_name, db_username, db_userpassword
    Dim db_server

    db_server = "50.62.209.160:3306"
    db_name = "bdAdmin"
    db_username = "admusr"
    db_userpassword = "admusr1"
    fieldname = "name"
    tablename = "tbl1"

    connectstr = "Driver={MySQL ODBC 3.51 Driver};SERVER=" & db_server & ";DATABASE=" & db_name & ";UID=" & db_username & ";PWD=" & db_userpassword

    Set oConn = Server.CreateObject("ADODB.Connection")
    oConn.Open connectstr

    qry = "SELECT * FROM " & tablename

    Set oRS = oConn.Execute(qry)

    if not oRS.EOF then
    while not oRS.EOF
    response.write ucase(fieldname) & ": " & oRs.Fields(fieldname) & "
    "
    oRS.movenext
    wend
    oRS.close
    end if

    Set oRs = nothing
    Set oConn = nothing

    %> 
</body>
</html>