<%@ Page Title="BioGene - Bioinformatics & Data Science Blog Website" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Create_Project.Default"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<h3>Exploring the World of Bioinformatics and Data Science</h3>
<hr />
<div style="margin-left:10px; margin-right:10px; text-align:justify; font-size: 18px; overflow: auto">
    <p><img src="../pics/bioinformatics_pic1.jpg" width="500px" style="float: right; margin-left: 20px;" />Welcome to our Bioinformatics Blog, where we delve into the fascinating world of genomics, proteomics, metagenomics, and structural bioinformatics. Our goal is to provide insights into the latest research and developments in these exciting fields, as well as share tips and tools for those working in bioinformatics.</p>
    <p>In the field of genomics, we explore the study of entire genomes, from analyzing the sequence of DNA to studying the expression of genes. We keep you up-to-date on the latest research on gene regulation, genetic variation, and evolutionary biology.</p>
    <p>In the field of proteomics, we delve into the study of proteins and their interactions with other molecules. We explore how proteins are synthesized, modified, and regulated, and how these processes can be used to better understand disease mechanisms and develop new therapies.</p>
    <p>In the field of metagenomics, we examine the study of the collective genomes of microbial communities. We explore the application of metagenomics to better understand the ecology and evolution of microbial communities, and how this knowledge can be applied to solve environmental and public health challenges.</p>
    <p>In the field of structural bioinformatics, we explore the study of the three-dimensional structure of biomolecules, such as proteins and nucleic acids. We examine how this knowledge can be used to better understand protein function and design new drugs with greater specificity and efficacy.</p>
    <p>Stay tuned for regular updates on the latest developments in these exciting fields, as well as interviews with leading scientists and reviews of cutting-edge tools and techniques. Thank you for joining us on this journey of discovery and exploration in the world of bioinformatics.</p>
</div>

    <div>
        <asp:Repeater ID="RepBlogDetails" runat="server">
            <ItemTemplate>
                <b><%#Eval("Blogtitle") %></b>
                <p class="card-text" style="background:#D3D3D3;">
                    <%#Eval("BlogDesc") %>
                </p>
                <a href ="<%#Eval("Blogcategory")%>/<%#Eval("BlogUrl")%>" style="color:#282828;">Read The Complete Article ....</a>
                <div class="card-footer text-muted">
                    Posted On: <%# Eval("Blogposteddate","{0: MMMM dd, yyyy}") %>
                    <a href ="<%#Eval("Blogcategory") %>/Home.aspx" style="color:#282828;"><%#Eval("Blogcategory") %></a>
                </div>
                <hr />
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
