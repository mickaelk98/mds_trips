<?php
/**
 * @var \App\View\AppView $this
 * @var iterable<\App\Model\Entity\City> $cities
 */
?>
<div class="cities index content">
    <?php if(!empty($this->request->getAttribute('identity'))): ?>
    <?= $this->Html->link(__('Ajouter une destination'), ['action' => 'add'], ['class' => 'button float-right']) ?>
    <?php endif; ?>
    <h3><?= __('Cities') ?></h3>
    <div class="table-responsive">
        <table>
            <thead>
                <tr>
                    
                    <th><?= $this->Paginator->sort('nom') ?></th>
                    <th><?= $this->Paginator->sort('pays') ?></th>
                    <?php if(!empty($this->request->getAttribute('identity'))): ?>
                    <th class="actions"><?= __('Actions') ?></th>
                    <?php endif; ?>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($cities as $city): ?>
                <tr>
              
                    <td><?= h($city->name) ?></td>
                    <td><?= h($city->country) ?></td>
                    <?php if(!empty($this->request->getAttribute('identity'))): ?>
                    <td class="actions">
                        <?= $this->Html->link(__('Voir'), ['action' => 'view', $city->id]) ?>
                        <?= $this->Html->link(__('Modifier'), ['action' => 'edit', $city->id]) ?>
                        <?= $this->Form->postLink(__('Supprimer'), ['action' => 'delete', $city->id], ['confirm' => __('Are you sure you want to delete # {0}?', $city->id)]) ?>
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