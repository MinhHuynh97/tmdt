<?php
include_once('../database/connect.php');
?>
			<main class="content">
				<div class="container-fluid p-0">

					

					
					<div class="col-12 col-lg-12 col-xxl-12 d-flex">
							<div class="card flex-fill">
								<div class="card-header">

									<h5 class="card-title mb-0">User</h5>
								</div>
								<table class="table table-hover my-0">
									<thead>
										<tr>
											<th>Name</th>
											<th class="d-none d-xl-table-cell">Birthday</th>
											<th class="d-none d-xl-table-cell">Email</th>
											<th class="d-none d-xl-table-cell">Addres</th>
											<th class="d-none d-md-table-cell">Phone</th>
											<th class="d-none d-md-table-cell">CreateDate</th>
										</tr>
									</thead>
									<tbody>
									<?php 
										$custom=mysqli_query($con,"SELECT * from users");
										while($row_custom=mysqli_fetch_array($custom)){
									?>
										<tr>
											<td><?php echo $row_custom['name'] ?></td>
											<td class="d-none d-xl-table-cell"><?php echo $row_custom['dateOfBirth'] ?></td>
											<td class="d-none d-xl-table-cell"><?php echo $row_custom['email'] ?></td>
											<td class="d-none d-xl-table-cell"><?php echo $row_custom['address'] ?></td>
											<td class="d-none d-md-table-cell"><?php echo $row_custom['phone_no'] ?></td>
											<td class="d-none d-md-table-cell"><?php echo $row_custom['createdAt'] ?></td>
											<td><a href="" class="align-middle"> <i class="align-middle" data-feather="eye"></i></a></td>
										</tr>
										<?php
										}
										?>
										<!-- <tr>
											<td>Project Fireball</td>
											<td class="d-none d-xl-table-cell">01/01/2021</td>
											<td class="d-none d-xl-table-cell">31/06/2021</td>
											<td><span class="badge bg-danger">Cancelled</span></td>
											<td class="d-none d-md-table-cell">William Harris</td>
										</tr>
										<tr>
											<td>Project Hades</td>
											<td class="d-none d-xl-table-cell">01/01/2021</td>
											<td class="d-none d-xl-table-cell">31/06/2021</td>
											<td><span class="badge bg-success">Done</span></td>
											<td class="d-none d-md-table-cell">Sharon Lessman</td>
										</tr>
										<tr>
											<td>Project Nitro</td>
											<td class="d-none d-xl-table-cell">01/01/2021</td>
											<td class="d-none d-xl-table-cell">31/06/2021</td>
											<td><span class="badge bg-warning">In progress</span></td>
											<td class="d-none d-md-table-cell">Vanessa Tucker</td>
										</tr>
										<tr>
											<td>Project Phoenix</td>
											<td class="d-none d-xl-table-cell">01/01/2021</td>
											<td class="d-none d-xl-table-cell">31/06/2021</td>
											<td><span class="badge bg-success">Done</span></td>
											<td class="d-none d-md-table-cell">William Harris</td>
										</tr>
										<tr>
											<td>Project X</td>
											<td class="d-none d-xl-table-cell">01/01/2021</td>
											<td class="d-none d-xl-table-cell">31/06/2021</td>
											<td><span class="badge bg-success">Done</span></td>
											<td class="d-none d-md-table-cell">Sharon Lessman</td>
										</tr>
										<tr>
											<td>Project Romeo</td>
											<td class="d-none d-xl-table-cell">01/01/2021</td>
											<td class="d-none d-xl-table-cell">31/06/2021</td>
											<td><span class="badge bg-success">Done</span></td>
											<td class="d-none d-md-table-cell">Christina Mason</td>
										</tr>
										<tr>
											<td>Project Wombat</td>
											<td class="d-none d-xl-table-cell">01/01/2021</td>
											<td class="d-none d-xl-table-cell">31/06/2021</td>
											<td><span class="badge bg-warning">In progress</span></td>
											<td class="d-none d-md-table-cell">William Harris</td>
										</tr> -->
									</tbody>
								</table>
							</div>
						</div>

				</div>
			</main>

			