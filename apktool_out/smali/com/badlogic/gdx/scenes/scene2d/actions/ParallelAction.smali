.class public Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "ParallelAction.java"


# instance fields
.field actions:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/Action;",
            ">;"
        }
    .end annotation
.end field

.field private complete:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    .line 27
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->actions:Lcom/badlogic/gdx/utils/Array;

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .locals 2
    .param p1, "action1"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    .line 27
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->actions:Lcom/badlogic/gdx/utils/Array;

    .line 34
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .locals 2
    .param p1, "action1"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p2, "action2"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    .line 27
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->actions:Lcom/badlogic/gdx/utils/Array;

    .line 38
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 39
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .locals 2
    .param p1, "action1"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p2, "action2"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p3, "action3"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    .line 27
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->actions:Lcom/badlogic/gdx/utils/Array;

    .line 43
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 44
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 45
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .locals 2
    .param p1, "action1"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p2, "action2"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p3, "action3"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p4, "action4"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    .line 27
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->actions:Lcom/badlogic/gdx/utils/Array;

    .line 49
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 50
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 51
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 52
    invoke-virtual {p0, p4}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .locals 2
    .param p1, "action1"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p2, "action2"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p3, "action3"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p4, "action4"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p5, "action5"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    .line 27
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->actions:Lcom/badlogic/gdx/utils/Array;

    .line 56
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 57
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 58
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 59
    invoke-virtual {p0, p4}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 60
    invoke-virtual {p0, p5}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 61
    return-void
.end method


# virtual methods
.method public act(F)Z
    .locals 6
    .param p1, "delta"    # F

    .prologue
    const/4 v5, 0x1

    .line 64
    iget-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->complete:Z

    if-eqz v4, :cond_0

    move v4, v5

    .line 76
    :goto_0
    return v4

    .line 65
    :cond_0
    iput-boolean v5, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->complete:Z

    .line 66
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->getPool()Lcom/badlogic/gdx/utils/Pool;

    move-result-object v3

    .line 67
    .local v3, "pool":Lcom/badlogic/gdx/utils/Pool;
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->setPool(Lcom/badlogic/gdx/utils/Pool;)V

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->actions:Lcom/badlogic/gdx/utils/Array;

    .line 70
    .local v0, "actions":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/Action;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, "n":I
    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v4, :cond_3

    .line 71
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v4, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->act(F)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->complete:Z

    .line 72
    :cond_1
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    .line 76
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->setPool(Lcom/badlogic/gdx/utils/Pool;)V

    move v4, v5

    goto :goto_0

    .line 70
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 74
    :cond_3
    :try_start_1
    iget-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->complete:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->setPool(Lcom/badlogic/gdx/utils/Pool;)V

    goto :goto_0

    .end local v0    # "actions":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/Action;>;"
    .end local v1    # "i":I
    .end local v2    # "n":I
    :catchall_0
    move-exception v4

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->setPool(Lcom/badlogic/gdx/utils/Pool;)V

    throw v4
.end method

.method public addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .locals 1
    .param p1, "action"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->actions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 95
    :cond_0
    return-void
.end method

.method public getActions()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->actions:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->reset()V

    .line 89
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->actions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 90
    return-void
.end method

.method public restart()V
    .locals 4

    .prologue
    .line 81
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->complete:Z

    .line 82
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->actions:Lcom/badlogic/gdx/utils/Array;

    .line 83
    .local v0, "actions":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/Action;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 84
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Action;->restart()V

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    :cond_0
    return-void
.end method

.method public setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 4
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->actions:Lcom/badlogic/gdx/utils/Array;

    .line 99
    .local v0, "actions":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/Action;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 100
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    :cond_0
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 102
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v4, 0x40

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 110
    .local v1, "buffer":Ljava/lang/StringBuilder;
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const/16 v4, 0x28

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->actions:Lcom/badlogic/gdx/utils/Array;

    .line 113
    .local v0, "actions":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/Action;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    iget v3, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 114
    if-lez v2, :cond_0

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_0
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    :cond_1
    const/16 v4, 0x29

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
