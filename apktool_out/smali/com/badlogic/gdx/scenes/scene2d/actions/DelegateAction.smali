.class public abstract Lcom/badlogic/gdx/scenes/scene2d/actions/DelegateAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "DelegateAction.java"


# instance fields
.field protected action:Lcom/badlogic/gdx/scenes/scene2d/Action;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    return-void
.end method


# virtual methods
.method public final act(F)Z
    .locals 2
    .param p1, "delta"    # F

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/DelegateAction;->getPool()Lcom/badlogic/gdx/utils/Pool;

    move-result-object v0

    .line 41
    .local v0, "pool":Lcom/badlogic/gdx/utils/Pool;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/DelegateAction;->setPool(Lcom/badlogic/gdx/utils/Pool;)V

    .line 43
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/DelegateAction;->delegate(F)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 45
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/DelegateAction;->setPool(Lcom/badlogic/gdx/utils/Pool;)V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/DelegateAction;->setPool(Lcom/badlogic/gdx/utils/Pool;)V

    throw v1
.end method

.method protected abstract delegate(F)Z
.end method

.method public getAction()Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelegateAction;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->reset()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelegateAction;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 56
    return-void
.end method

.method public restart()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelegateAction;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelegateAction;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->restart()V

    .line 51
    :cond_0
    return-void
.end method

.method public setAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .locals 0
    .param p1, "action"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelegateAction;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 31
    return-void
.end method

.method public setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelegateAction;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelegateAction;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 60
    :cond_0
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 61
    return-void
.end method

.method public setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1
    .param p1, "target"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelegateAction;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelegateAction;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 65
    :cond_0
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 66
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelegateAction;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelegateAction;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
