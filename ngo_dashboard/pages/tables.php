<?php
session_start();
if (isset($_SESSION['ngo_id'])) { ?>

  <?php
  include_once 'ngo_retrieve.php';
  ?>
  <!DOCTYPE html>
  <html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="../assets/img/favicon.png">
    <title>
    <?php echo $row['ngo_name']; ?> NGO Dashboard 
    </title>
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
    <!-- Nucleo Icons -->
    <link href="../assets/css/nucleo-icons.css" rel="stylesheet" />
    <link href="../assets/css/nucleo-svg.css" rel="stylesheet" />
    <!-- Font Awesome Icons -->
    <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
    <link href="../assets/css/nucleo-svg.css" rel="stylesheet" />
    <!-- CSS Files -->
    <link id="pagestyle" href="../assets/css/argon-dashboard.css?v=2.0.0" rel="stylesheet" />
  </head>

  <body class="g-sidenav-show   bg-gray-100">
    <div class="min-height-300 bg-primary position-absolute w-100"></div>
    <aside class="sidenav bg-white navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-4 " id="sidenav-main">

      <div class="sidenav-header">
        <i class="fas fa-times p-3 cursor-pointer text-secondary opacity-5 position-absolute end-0 top-0 d-none d-xl-none" aria-hidden="true" id="iconSidenav"></i>
        <a class="navbar-brand m-0" href="./Ngo-Dashboard.php">
          <!--  https://demos.creative-tim.com/argon-dashboard/pages/dashboard.html "
            target="_blank" -->
          <!-- <img src="./assets/img/logo-ct-dark.png" class="navbar-brand-img h-100" alt="main_logo"> -->
          <img src="../assets/img/community.png" class="avatar avatar-sm me-3" alt="ngo-logo">
          <span class="ms-1 font-weight-bold"><?php echo $row['ngo_name']; ?></span>
        </a>
      </div>
      <hr class="horizontal dark mt-0">

      <div class="" id="sidenav-collapse-main">

        <ul class="navbar-nav">

          <li class="nav-item">
            <a class="nav-link " href="./Ngo-Dashboard.php">
              <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
                <i class="ni ni-tv-2 text-primary text-sm opacity-10"></i>
              </div>
              <span class="nav-link-text ms-1">Dashboard</span>
            </a>
          </li>

          <li class="nav-item">
            <a class="nav-link " href="./tables.php">
              <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
                <i class="ni ni-bullet-list-67 text-warning text-sm opacity-10"></i>
              </div>
              <span class="nav-link-text ms-1">Volunteers</span>
            </a>
          </li>

          <li class="nav-item">
            <a class="nav-link " href="">
              <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
                <i class="fa fa-newspaper-o text-primary text-sm opacity-10"></i>
              </div>
              <span class="nav-link-text ms-1">News and Event</span>
            </a>
          </li>

          <li class="nav-item">
            <a class="nav-link " href="./tables.php">
              <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
                <i class="ni ni-bullet-list-67 text-warning text-sm opacity-10"></i>
              </div>
              <span class="nav-link-text ms-1">Applicants</span>
            </a>
          </li>

          <li class="nav-item">
            <a class="nav-link " href="">
              <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
                <i class="ni ni-books text-primary text-sm opacity-10"></i>
              </div>
              <span class="nav-link-text ms-1">Ebook</span>
            </a>
          </li>

          <li class="nav-item">
            <a class="nav-link " href="./Ngo-Donation.php">
              <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
                <i class="ni ni-credit-card text-success text-sm opacity-10"></i>
              </div>
              <span class="nav-link-text ms-1">Donation</span>
            </a>
          </li>

          <li class="nav-item">
            <a class="nav-link " href="./Ngo-Profile.php">
              <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
                <i class="ni ni-single-02 text-dark text-sm opacity-10"></i>
              </div>
              <span class="nav-link-text ms-1">Profile</span>
            </a>
          </li>

        </ul>

      </div>

    </aside>

    <main class="main-content position-relative border-radius-lg ">
      <!-- Navbar -->
      <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl " id="navbarBlur" data-scroll="false">
        <div class="container-fluid py-1 px-3">

          <nav aria-label="breadcrumb">
            <h6 class="font-weight-bolder text-white mb-0">Dashboard</h6>
          </nav>

          <div class="mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">

            <div class="ms-md-auto pe-md-3 d-flex align-items-center">
              <!-- <div class="input-group">
                  <span class="input-group-text text-body"><i class="fas fa-search" aria-hidden="true"></i></span>
                  <input type="text" class="form-control" placeholder="Type here...">
                </div> -->
            </div>

            <ul class="navbar-nav  justify-content-end">

              <li class="nav-item d-flex align-items-center">
                <a href="./logout.php" class="nav-link text-white font-weight-bold px-0">
                  <i class="fa fa-user me-sm-1"></i>
                  <span class="d-sm-inline d-none">Logout</span>
                </a>
              </li>

              <li class="nav-item d-xl-none ps-3 d-flex align-items-center">
                <a href="#sidenav-collapse-main" class="nav-link text-white p-0" id="iconNavbarSidenav">
                  <div class="sidenav-toggler-inner">
                    <i class="sidenav-toggler-line bg-white"></i>
                    <i class="sidenav-toggler-line bg-white"></i>
                    <i class="sidenav-toggler-line bg-white"></i>
                  </div>
                </a>
              </li>

              <li class="nav-item px-3 d-flex align-items-center">

              </li>

              <li class="nav-item dropdown pe-2 d-flex align-items-center">
                <a href="javascript:;" class="nav-link text-white p-0" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
                  <i class="fa fa-bell cursor-pointer"></i>
                </a>

                <ul class="dropdown-menu  dropdown-menu-end  px-2 py-3 me-sm-n4" aria-labelledby="dropdownMenuButton">
                  <li class="mb-2">
                    <a class="dropdown-item border-radius-md" href="javascript:;">
                      <div class="d-flex py-1">
                        <div class="my-auto">
                          <img src="./assets/img/team-2.jpg" class="avatar avatar-sm  me-3 ">
                        </div>
                        <div class="d-flex flex-column justify-content-center">
                          <h6 class="text-sm font-weight-normal mb-1">
                            <span class="font-weight-bold">New Application</span> from Laur
                          </h6>
                          <p class="text-xs text-secondary mb-0">
                            <i class="fa fa-clock me-1"></i>
                            13 minutes ago
                          </p>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li class="mb-2">
                    <a class="dropdown-item border-radius-md" href="javascript:;">
                      <div class="d-flex py-1">
                        <div class="my-auto">
                          <img src="./assets/img/small-logos/logo-spotify.svg" class="avatar avatar-sm bg-gradient-dark  me-3 ">
                        </div>
                        <div class="d-flex flex-column justify-content-center">
                          <h6 class="text-sm font-weight-normal mb-1">
                            <span class="font-weight-bold">Received $140 Donation</span> by Travis Scott
                          </h6>
                          <p class="text-xs text-secondary mb-0">
                            <i class="fa fa-clock me-1"></i>
                            1 day
                          </p>
                        </div>
                      </div>
                    </a>
                  </li>

                </ul>
              </li>

            </ul>

          </div>

        </div>
      </nav>
      <!-- End Navbar -->
      <div class="container-fluid py-4">
        <div class="row">
          <div class="col-12">
            <div class="card mb-4">
              <div class="card-header pb-0">
                <h6>Volunteers List</h6>
              </div>
              <div class="card-body px-0 pt-0 pb-2">
                <div class="table-responsive p-0">
                  <table class="table align-items-center mb-0">
                    <thead>
                      <tr>
                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Name</th>
                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Resume</th>
                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center">Mobile Number</th>
                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center">Occupation</th>
                        <th class="text-secondary opacity-7"></th>
                      </tr>
                    </thead>
                    <tbody>
                    <?php
                            require_once('../../PHP/dbcon.php');
                            try {
                              $stmt = $pdo->prepare("SELECT * FROM volunteer_reg where ngo_id = :id");
                          
                              $id = $_SESSION['ngo_id'];
                              $stmt->bindParam('id', $id, PDO::PARAM_INT);
                          
                              $stmt->execute();
                          
                              while (($row = $stmt->fetch(PDO::FETCH_ASSOC)) !== false) {
                              ?>
                                <?php
                                  $stmt1 = $pdo->prepare("SELECT * FROM member where id = :id");
                                  $stmt1->bindParam('id', $row['mid'], PDO::PARAM_INT);
                                  $stmt1->execute();
                                  $result = $stmt1->fetch(PDO::FETCH_ASSOC);
                                  
                                ?>
                                <tr>
                                  <td>
                                    <div class="d-flex px-2 py-1">
                                      <div class="d-flex flex-column justify-content-center">
                                        <h6 class="mb-0 text-sm"><?php echo $result['name']; ?></h6>
                                        <p class="text-xs text-secondary mb-0"><?php echo $result['email']; ?></p>
                                      </div>
                                    </div>
                                  </td>
                                  <td>
                                    <a href='../../PHP/<?php echo $row['resume']; ?>' class="text-xs font-weight-bold mb-0">View</p>
                                  </td>
                                  <td class="align-middle text-center text-sm">
                                    <span class="text-secondary text-xs font-weight-bold"><?php echo $row['vol_contact']; ?></span>
                                  </td>
                                  <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold"><?php echo $row['vol_occ'];?></span>
                                  </td>
                                  <td class="align-middle">
                                    <a href="javascript:void(0);" class="text-secondary font-weight-bold text-xs" data-toggle="tooltip" data-original-title="Edit user">
                                      Remove
                                    </a>
                                  </td>
                                </tr>
                            <?php
                              }
                            } catch (PDOException $e) {
                                  echo "Error: " . $e->getMessage();
                            }
                            ?>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>
    </main>

    <!--   Core JS Files   -->
    <script src="../assets/js/core/popper.min.js"></script>
    <script src="../assets/js/core/bootstrap.min.js"></script>
    <script src="../assets/js/plugins/perfect-scrollbar.min.js"></script>
    <script src="../assets/js/plugins/smooth-scrollbar.min.js"></script>
    <script>
      var win = navigator.platform.indexOf('Win') > -1;
      if (win && document.querySelector('#sidenav-scrollbar')) {
        var options = {
          damping: '0.5'
        }
        Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
      }
    </script>
    <!-- Github buttons -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
    <!-- Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
    <script src="../assets/js/argon-dashboard.min.js?v=2.0.0"></script>
  </body>

  </html>
<?php
} else
  header('location:../../PHP/ngo_login_form.php');
?>