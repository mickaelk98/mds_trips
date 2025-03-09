<?php
/**
 * @var \App\View\AppView $this
 * @var iterable<\App\Model\Entity\Trip> $trips
 */
?>
<div class="trips index content">
<?php if(!empty($this->request->getAttribute('identity'))): ?>
    <?= $this->Html->link(__('ajouter un voyages'), ['action' => 'add'], ['class' => 'button float-right']) ?>
    <?php endif; ?>
    <h3><?= __('Trips') ?></h3>
    <div class="table-responsive">
        <table>
            <thead>
                <tr>
                    
                    <th><?= $this->Paginator->sort('titre') ?></th>
                    <th><?= $this->Paginator->sort('utilisateur') ?></th>
                    <th><?= $this->Paginator->sort('lieux') ?></th>
                    <?php if(!empty($this->request->getAttribute('identity'))): ?>
                    <th class="actions"><?= __('Actions') ?></th>
                    <?php endif; ?>

                </tr>
            </thead>
            <tbody>
                <?php foreach ($trips as $trip): ?>
                <tr>
                   
                    <td><?= h($trip->title) ?></td>
                    <td><?= $trip->hasValue('user') ? $this->Html->link($trip->user->username, ['controller' => 'Users', 'action' => 'view', $trip->user->id]) : '' ?></td>
                    <td><?= $trip->hasValue('city') ? $this->Html->link($trip->city->name, ['controller' => 'Cities', 'action' => 'view', $trip->city->id]) : '' ?></td>
                    <?php if(!empty($this->request->getAttribute('identity'))): ?>
                    <td class="actions">
                        <?= $this->Html->link(__('Voir'), ['action' => 'view', $trip->id]) ?>
                        <?= $this->Html->link(__('Modifier'), ['action' => 'edit', $trip->id]) ?>
                        <?= $this->Form->postLink(__('Supprimer'), ['action' => 'delete', $trip->id], ['confirm' => __('Are you sure you want to delete # {0}?', $trip->id)]) ?>
                    </td>
                    <?php endif; ?>
                </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
    <div class="paginator">
        <ul class="pagination">
            <?= $this->Paginator->first('<< ' . __('first')) ?>
            <?= $this->Paginator->prev('< ' . __('previous')) ?>
            <?= $this->Paginator->numbers() ?>
            <?= $this->Paginator->next(__('next') . ' >') ?>
            <?= $this->Paginator->last(__('last') . ' >>') ?>
        </ul>
        <p><?= $this->Paginator->counter(__('Page {{page}} of {{pages}}, showing {{current}} record(s) out of {{count}} total')) ?></p>
    </div>
</div>