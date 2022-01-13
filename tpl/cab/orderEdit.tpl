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


          </div>
          <div class="card-body">
            <h5>Редактирование заказа # <?=$orderData['id']?></h5>

            <form id='editOrder' method="POST">
              <div class="modal-body">

                <input type="hidden" name="action" value="editOrder">
                <div class="form-group">
                  <input type="date" class="form-control" name="orderDate" id="orderDate" value="<?=date('Y-m-d', strtotime($orderData['order_date']))?>">
                </div>
                <div class="form-group">
                  <input type="text" class="form-control" name="orderClientPhone" id="orderClientPhone" placeholder="Номер телефона" value="<?=$orderData['client_phone']?>">
                </div>
                <div class="form-group">
                  <input type="text" class="form-control" name="orderClientName" id="orderClientName" placeholder="Имя клиента" value="<?=$orderData['client_name']?>">
                </div>
                <div class="form-group">
                  <input type="text" class="form-control" name="orderCarBrand" id="orderCarBrand" placeholder="Марка авто" value="<?=$orderData['car_brand']?>">
                </div>
                <div class="form-group">
                  <input type="text" class="form-control" name="orderCarModel" id="orderCarModel" placeholder="Модель авто" value="<?=$orderData['car_model']?>">
                </div>
                <div class="form-group">
                  <input type="number" class="form-control" name="orderCarYear" id="orderCarYear" placeholder="Год выпуска" value="<?=$orderData['car_year']?>">
                </div>
                <div class="form-group">
                  <input type="number" class="form-control" name="orderAmount" id="orderAmount" placeholder="Сумма" value="<?=$orderData['amount']?>">
                </div>
                <div class="form-group">
                  <textarea class="form-control" name="orderDefect" id="orderDefect" placeholder="Заявленная неисправность"><?=$orderData['defect']?></textarea>
                </div>
                <div class="form-group">
                  <textarea class="form-control" name="orderWorks" id="orderWorks" placeholder="Выполненные работы"><?=$orderData['works']?></textarea>
                </div>
                <div class="form-group">
                  <textarea class="form-control" name="orderRecomendations" id="orderRecomendations" placeholder="Данные рекомендации"><?=$orderData['recomendations']?></textarea>
                </div>

              </div>
              <div class="modal-footer">
                <button type="submit" id="addOrderSubmit" class="btn btn-primary">Сохранить</button>
                <button type="button" class="btn btn-secondary" onClick="window.location = '/cab'">Отмена</button>
              </div>
            </form>
          </div>
        </div>
      </div>

    </div>



    <?php include ('tpl/cab/tpl_footer.tpl'); ?>
  </div>
</div>
