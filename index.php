<?php require_once('header.php'); ?>

<?php
$statement = $pdo->prepare("SELECT * FROM tbl_settings WHERE id=1");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);							
foreach ($result as $row) {
	$total_recent_news_home_page = $row['total_recent_news_home_page'];
	$home_title_service          = $row['home_title_service'];
	$home_subtitle_service       = $row['home_subtitle_service'];
	$home_status_service         = $row['home_status_service'];
	$home_title_department       = $row['home_title_department'];
	$home_subtitle_department    = $row['home_subtitle_department'];
	$home_status_department      = $row['home_status_department'];
	$home_title_doctor           = $row['home_title_doctor'];
	$home_subtitle_doctor        = $row['home_subtitle_doctor'];
	$home_status_doctor          = $row['home_status_doctor'];
	$home_title_pricing          = $row['home_title_pricing'];
	$home_subtitle_pricing       = $row['home_subtitle_pricing'];
	$home_status_pricing         = $row['home_status_pricing'];
	$home_title_testimonial      = $row['home_title_testimonial'];
	$home_subtitle_testimonial   = $row['home_subtitle_testimonial'];
	$home_status_testimonial     = $row['home_status_testimonial'];
	$home_title_news             = $row['home_title_news'];
	$home_subtitle_news          = $row['home_subtitle_news'];
	$home_status_news            = $row['home_status_news'];
	$home_title_partner          = $row['home_title_partner'];
	$home_subtitle_partner       = $row['home_subtitle_partner'];
	$home_status_partner         = $row['home_status_partner'];
}
?>

<!-- Slider Start -->
<section class="main-slider">
	<div class="slider">
		<ul class="bxslider">
				
			<?php
			$statement = $pdo->prepare("SELECT * FROM tbl_slider WHERE status=? ORDER BY id DESC");
			$statement->execute(array('Active'));
			$result = $statement->fetchAll(PDO::FETCH_ASSOC);							
			foreach ($result as $row) 
			{
				if($row['position']=='Left') {$align='tal';}
				if($row['position']=='Center') {$align='tac';}
				if($row['position']=='Right') {$align='tar';}
				?>
				<li style="background-image:url(<?php echo BASE_URL; ?>assets/uploads/<?php echo $row['photo']; ?>);">
					<div class="overlay"></div>
					<div class="content">
						<div class="inner <?php echo $align; ?>">
							<div class="text">
							
								<?php if($row['heading']!=''): ?>
								<h2>
									<?php echo $row['heading']; ?>
								</h2>
								<?php endif; ?>

								<?php if($row['subheading']!=''): ?>
								<h3>
									<?php echo $row['subheading']; ?>
								</h3>
								<?php endif; ?>
								
								<?php if($row['content']!=''): ?>
								<p>
									<?php echo nl2br($row['content']); ?>
								</p>
								<?php endif; ?>
								
								<?php if($row['button_text']!=''): ?>
								<p class="button">
									<a href="<?php echo $row['button_url']; ?>" class="btn btn-flat"><?php echo $row['button_text']; ?></a>
								</p>
								<?php endif; ?>

							</div>
						</div>
					</div>
				</li>
				<?php
			}
			?>			
		</ul>
	</div>
</section>
<!-- Slider End -->


<?php if($home_status_service == 1): ?>
<!-- Service Start -->
<section class="service-v1">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="heading">
					<h2><?php echo $home_title_service; ?></h2>
					<p><?php echo $home_subtitle_service; ?></p>
				</div>
			</div>
		</div>
		<div class="row">
			<?php
			$statement = $pdo->prepare("SELECT * FROM tbl_service ORDER BY id ASC");
			$statement->execute();
			$result = $statement->fetchAll(PDO::FETCH_ASSOC);							
			foreach ($result as $row) {
				?>
				<div class="col-sm-6 col-md-4 col-lg-4">
					<div class="item">
						<div class="photo" style="background-image:url(<?php echo BASE_URL; ?>assets/uploads/<?php echo $row['photo']; ?>);">
						</div>
						<div class="text">
							<div class="inner">
								<h3><a href="<?php echo BASE_URL; ?>service/<?php echo $row['slug']; ?>"><?php echo $row['name']; ?></a></h3>
								<p><?php echo $row['short_description']; ?></p>
								<p class="button">
									<a href="<?php echo BASE_URL; ?>service/<?php echo $row['slug']; ?>">Read More</a>
								</p>
							</div>
						</div>
					</div>
				</div>
				<?php
			}
			?>
		</div>
	</div>
</section>
<!-- Service End -->
<?php endif; ?>




<?php if($home_status_department == 1): ?>
<!-- Department Start -->
<section class="department-v2">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="heading">
					<h2><?php echo $home_title_department; ?></h2>
					<p><?php echo $home_subtitle_department; ?></p>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				
				<!-- Department Tab Start -->
				<div class="department-tab">

					<ul class="nav nav-tabs col-md-4">
						<?php
						$i=0;
						$statement = $pdo->prepare("SELECT * FROM tbl_department ORDER BY dep_id ASC");
						$statement->execute();
						$result = $statement->fetchAll(PDO::FETCH_ASSOC);							
						foreach ($result as $row) {
							$i++;
							?>
								<li class="<?php if($i==1) {echo 'active';} ?>"><a href="#tab<?php echo $i; ?>" data-toggle="tab" aria-expanded="<?php if($i==1) {echo 'true';}else{echo 'false';} ?>"><?php echo $row['dep_name']; ?></a></li>
							<?php
						}
						?>
					</ul>
					
					<!-- Tab Content Start -->
					<div class="tab-content col-md-8">
						<?php
						$i=0;
						$statement = $pdo->prepare("SELECT * FROM tbl_department ORDER BY dep_id ASC");
						$statement->execute();
						$result = $statement->fetchAll(PDO::FETCH_ASSOC);							
						foreach ($result as $row) {
							$i++;
							?>
							<div class="tab-pane fade <?php if($i==1) {echo 'active in';} ?>" id="tab<?php echo $i; ?>">
								<div class="row">										
									<div class="col-md-7">
										<div class="department-content">
											<h2><?php echo $row['dep_name']; ?></h2>
											<p>
												<?php echo $row['dep_detail']; ?>
											</p>
											<p class="button">
												<a href="<?php echo BASE_URL; ?>department/<?php echo $row['dep_slug']; ?>">See Details</a>
											</p>											
										</div>
									</div>
									<div class="col-md-5">
										<div class="thumb">
											<img class="img-fullwidth" src="<?php echo BASE_URL; ?>assets/uploads/<?php echo $row['dep_photo']; ?>" alt="<?php echo $row['dep_name']; ?>">
										</div>
									</div>
								</div>
							</div>
							<?php
						}
						?>
						

					</div>
					<!-- Tab Content End -->
				</div>
				<!-- Department Tab End -->


			</div>
		</div>
	</div>
</section>
<!-- Department End -->
<?php endif; ?>







<?php require_once('footer.php'); ?>