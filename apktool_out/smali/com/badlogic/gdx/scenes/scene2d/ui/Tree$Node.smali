.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
.super Ljava/lang/Object;
.source "Tree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Node"
.end annotation


# instance fields
.field actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field final children:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;",
            ">;"
        }
    .end annotation
.end field

.field expanded:Z

.field height:F

.field icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field object:Ljava/lang/Object;

.field parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

.field selectable:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    .line 405
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->selectable:Z

    .line 412
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "actor cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 414
    return-void
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V
    .locals 1
    .param p1, "node"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .prologue
    .line 449
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->insert(ILcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    .line 450
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/Array;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 453
    .local p1, "nodes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 454
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {p0, v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->insert(ILcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    .line 453
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 455
    :cond_0
    return-void
.end method

.method protected addToTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V
    .locals 3
    .param p1, "tree"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    .prologue
    .line 434
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 435
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-nez v2, :cond_1

    .line 438
    :cond_0
    return-void

    .line 436
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v1, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 437
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->addToTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V

    .line 436
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public collapseAll()V
    .locals 1

    .prologue
    .line 559
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->setExpanded(Z)V

    .line 560
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->collapseAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 561
    return-void
.end method

.method public expandAll()V
    .locals 1

    .prologue
    .line 565
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->setExpanded(Z)V

    .line 566
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->expandAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 567
    :cond_0
    return-void
.end method

.method public expandTo()V
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 572
    .local v0, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    :goto_0
    if-eqz v0, :cond_0

    .line 573
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->setExpanded(Z)V

    .line 574
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    goto :goto_0

    .line 576
    :cond_0
    return-void
.end method

.method public findExpandedObjects(Lcom/badlogic/gdx/utils/Array;)V
    .locals 1
    .param p1, "objects"    # Lcom/badlogic/gdx/utils/Array;

    .prologue
    .line 587
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->findExpandedObjects(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Array;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->object:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 588
    :cond_0
    return-void
.end method

.method public findNode(Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 552
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "object cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->object:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 554
    .end local p0    # "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->findNode(Lcom/badlogic/gdx/utils/Array;Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    move-result-object p0

    goto :goto_0
.end method

.method public getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getChildren()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 506
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getIcon()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0
.end method

.method public getLevel()I
    .locals 2

    .prologue
    .line 541
    const/4 v1, 0x0

    .line 542
    .local v1, "level":I
    move-object v0, p0

    .line 544
    .local v0, "current":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 545
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getParent()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    move-result-object v0

    .line 546
    if-nez v0, :cond_0

    .line 547
    return v1
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public getParent()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    return-object v0
.end method

.method public getTree()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;
    .locals 2

    .prologue
    .line 491
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    .line 492
    .local v0, "parent":Lcom/badlogic/gdx/scenes/scene2d/Group;
    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 493
    .end local v0    # "parent":Lcom/badlogic/gdx/scenes/scene2d/Group;
    :goto_0
    return-object v0

    .restart local v0    # "parent":Lcom/badlogic/gdx/scenes/scene2d/Group;
    :cond_0
    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    goto :goto_0
.end method

.method public insert(ILcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "node"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .prologue
    .line 458
    iput-object p0, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 459
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->insert(ILjava/lang/Object;)V

    .line 460
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->updateChildren()V

    .line 461
    return-void
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 501
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 579
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->selectable:Z

    return v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getTree()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    move-result-object v0

    .line 465
    .local v0, "tree":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;
    if-eqz v0, :cond_1

    .line 466
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->remove(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 467
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    if-eqz v1, :cond_0

    .line 468
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->remove(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    goto :goto_0
.end method

.method public remove(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V
    .locals 3
    .param p1, "node"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .prologue
    .line 472
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 473
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-nez v1, :cond_1

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 474
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getTree()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    move-result-object v0

    .line 475
    .local v0, "tree":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;
    if-eqz v0, :cond_0

    .line 476
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->removeFromTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V

    .line 477
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    goto :goto_0
.end method

.method public removeAll()V
    .locals 4

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getTree()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    move-result-object v2

    .line 482
    .local v2, "tree":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;
    if-eqz v2, :cond_0

    .line 483
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v1, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 484
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->removeFromTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V

    .line 483
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 486
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 487
    return-void
.end method

.method protected removeFromTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V
    .locals 3
    .param p1, "tree"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    .prologue
    .line 442
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    .line 443
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-nez v2, :cond_1

    .line 446
    :cond_0
    return-void

    .line 444
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v1, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 445
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->removeFromTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V

    .line 444
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public restoreExpandedObjects(Lcom/badlogic/gdx/utils/Array;)V
    .locals 4
    .param p1, "objects"    # Lcom/badlogic/gdx/utils/Array;

    .prologue
    .line 591
    const/4 v0, 0x0

    .local v0, "i":I
    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 592
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->findNode(Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    move-result-object v2

    .line 593
    .local v2, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    if-eqz v2, :cond_0

    .line 594
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->setExpanded(Z)V

    .line 595
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expandTo()V

    .line 591
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 598
    .end local v2    # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    :cond_1
    return-void
.end method

.method public setExpanded(Z)V
    .locals 4
    .param p1, "expanded"    # Z

    .prologue
    .line 417
    iget-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-ne p1, v3, :cond_1

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    .line 419
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v3, :cond_0

    .line 420
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getTree()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    move-result-object v2

    .line 421
    .local v2, "tree":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;
    if-eqz v2, :cond_0

    .line 422
    if-eqz p1, :cond_2

    .line 423
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v1, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 424
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->addToTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V

    .line 423
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 426
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v1, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    .restart local v1    # "n":I
    :goto_2
    if-ge v0, v1, :cond_3

    .line 427
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->removeFromTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V

    .line 426
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 429
    :cond_3
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->invalidateHierarchy()V

    goto :goto_0
.end method

.method public setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .locals 0
    .param p1, "icon"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .prologue
    .line 524
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 525
    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 533
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->object:Ljava/lang/Object;

    .line 534
    return-void
.end method

.method public setSelectable(Z)V
    .locals 0
    .param p1, "selectable"    # Z

    .prologue
    .line 583
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->selectable:Z

    .line 584
    return-void
.end method

.method public updateChildren()V
    .locals 4

    .prologue
    .line 510
    iget-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-nez v3, :cond_1

    .line 515
    :cond_0
    return-void

    .line 511
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getTree()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    move-result-object v2

    .line 512
    .local v2, "tree":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;
    if-eqz v2, :cond_0

    .line 513
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v1, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 514
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->addToTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V

    .line 513
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
