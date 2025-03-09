<h2>Connexion</h2>
<?= $this->Form->create()?>

<?= $this->Form->control('username')?>
<?= $this->Form->control('password', ['type' => 'password'])?>

<?= $this->Form->button('Se connecter')?>
<?= $this->Form->end() ?>