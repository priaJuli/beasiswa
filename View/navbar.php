<nav class="navbar navbar-expand-lg navbar-default fixed-top" id="mainNav">
    <div class="navbar-header">
        <a class="navbar-brand" href="index.php">Klasterisasi Tweet Biznet</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
    </div>
    <ul class="navbar-nav navbar-right">
        <li>
            <?php 
            session_start(); 
            if(isset($_SESSION['user'])){
                ?><h4 class="">  <?php 
                echo $_SESSION['user']; ?></h4>
            <?php }
            else{
                ?><h4 class="">Guest
            <?php  
            }    
            ?></h4>
            
        </li>
        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                <i class="fa fa-user fa-fw"></i>
            </a>
            <ul class="dropdown-menu dropdown-user">
                <li><a href="#"><i class="fa fa-user fa-fw"></i> Profil User</a>
                </li>
                <li class="divider"></li>
                <li><a href="#"><i class="fa fa-sign-out fa-fw"></i> Keluar</a>
                </li>
            </ul>
            <!-- /.dropdown-user -->
        </li>
        <!-- /.dropdown -->
    </ul>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Dashboard">
          <a class="nav-link" href="index.php">
            <i class="fa fa-fw fa-dashboard"></i>
            <span class="nav-link-text">Home</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Tables">
          <a class="nav-link" href="index.php?halaman=training">
            <i class="fa fa-fw fa-table"></i>
            <span class="nav-link-text">Data Training</span>
          </a>
        </li>
        
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Tables">
          <a class="nav-link" href="index.php?halaman=preprocessing">
            <i class="fa fa-fw fa-table"></i>
            <span class="nav-link-text">Do clasification</span>
          </a>
        </li>
        
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Tables">
          <a class="nav-link" href="index.php?halaman=hasil-penelitian">
            <i class="fa fa-fw fa-table"></i>
            <span class="nav-link-text">Hasil Klasifikasi</span>
          </a>
        </li>
        
      </ul>
      <ul class="navbar-nav sidenav-toggler">
        <li class="nav-item">
          <a class="nav-link text-center" id="sidenavToggler">
            <i class="fa fa-fw fa-angle-left"></i>
          </a>
        </li>
      </ul>
      
    </div>
  </nav>