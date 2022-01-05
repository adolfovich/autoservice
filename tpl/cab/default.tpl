<div class="modal" id="modalAddOrder" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Добавить работу</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
	  <form method="POST">
      <div class="modal-body">
        
		<input type="hidden" name="action" value="addOrder" >
			<div class="form-group">				
				<input type="date" class="form-control" name="orderDate" id="orderDate" value="<?=date("Y-m-d")?>">
			</div>
			<div class="form-group">				
				<input type="text" class="form-control" name="orderClientPhone" id="orderClientPhone" placeholder="Номер телефона">
			</div>
			<div class="form-group">				
				<input type="text" class="form-control" name="orderClientName" id="orderClientName" placeholder="Имя клиента">
			</div>			
			<div class="form-group">				
				<input type="text" class="form-control" name="orderCarBrand" id="orderCarBrand" placeholder="Марка авто">
			</div>
			<div class="form-group">				
				<input type="text" class="form-control" name="orderCarModel" id="orderCarModel" placeholder="Модель авто">
			</div>
			<div class="form-group">				
				<input type="number" class="form-control" name="orderCarYear" id="orderCarYear" placeholder="Год выпуска">
			</div>
			<div class="form-group">				
				<input type="number" class="form-control" name="orderAmount" id="orderAmount" placeholder="Сумма">
			</div>
			<div class="form-group">				
				<textarea class="form-control" name="orderWorks" id="orderWorks" placeholder="Выполненные работы"></textarea>
			</div>
			<div class="form-group">				
				<textarea class="form-control" name="orderRecomendations" id="orderRecomendations" placeholder="Данные рекомендации"></textarea>
			</div>
		
		
		
		
		
		
      </div>
      <div class="modal-footer">
        <button type="submit" class="btn btn-primary">Сохранить</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Отмена</button>
      </div>
	  </form>
    </div>
  </div>
</div>

<div class="main-content">
    <!-- Top navbar -->
    <?php include ('tpl/cab/tpl_header.tpl'); ?>
    <!-- Header -->
    <div class="header bg-gradient-primary pb-8 pt-5 pt-md-8">
      <div class="container-fluid">
        <div class="header-body">

        </div>
      </div>
    </div>
    <!-- Page content -->
    <div class="container-fluid mt--7">
      <div class="row">
        <div class="col-xl-8 mb-5 mb-xl-0">
          <div class="card">
            <div class="card-header bg-transparent" style="padding-bottom: 0;">
              <div class="row align-items-center">
                <div class="col">
                      <div class="row">
                        <div class="col-md-12">
                          <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalAddOrder">Добавить работу</button>
                        </div>
                      </div> 
                </div>
              </div>
            </div>
            <div class="card-body">
              <h5>Список работ</h5>
			  <table class="table table-sm">
				  <!--thead>
					<tr>
					  <th scope="col">#</th>
					  <th scope="col">Имя</th>
					  <th scope="col">Телефон</th>
					  <th scope="col">Авто</th>
					  <th scope="col">Сумма</th>
					</tr>
				  </thead-->
				  <tbody>
				  <?php 
				  if (count($orders)) {
					foreach ($orders as $order) {
					?>
						<tr>
						  <th scope="row" class="text-center">
							#<?=$order['id']?><br>
							<?=date("d.m.y", strtotime($order['order_date']))?>
						  </th>
						  <td>
							<div style="overflow: hidden; white-space: normal;">
								<?=$order['client_name']?> <?=$order['client_phone']?><br>
								<?=$order['car_brand'].' '.$order['car_model'].' ('.$order['car_year'].')'?><br>
								<b>Работы:</b> <?=$order['works']?><br>
								<b>Рекомендации:</b> <?=$order['recomendations']?><br>
							<div>
						  </td>
						  <td><?=$order['amount']?></td>
						</tr>
					<?php 
					$sum += $order['amount'];
					}
					?>
						<tr>						  
						  <td colspan="3" class="text-center"><b>ИТОГО: </b><?=$sum?></td>						  
						</tr>
					<?php 
				  } else {
					?>
						<tr>						  
						  <td colspan="3" class="text-center">Нет данных</td>						  
						</tr>
					<?php 
				  }
				  ?>
					
					
				  </tbody>
				</table>
            </div>
          </div>
        </div>
        
      </div>

      

      <?php include ('tpl/cab/tpl_footer.tpl'); ?>
    </div>
  </div>
