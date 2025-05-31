.class public Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "RunnableAction.java"


# instance fields
.field private ran:Z

.field private runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    return-void
.end method


# virtual methods
.method public act(F)Z
    .locals 2
    .param p1, "delta"    # F

    .prologue
    const/4 v1, 0x1

    .line 30
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;->ran:Z

    if-nez v0, :cond_0

    .line 31
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;->ran:Z

    .line 32
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;->run()V

    .line 34
    :cond_0
    return v1
.end method

.method public getRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;->runnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->reset()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;->runnable:Ljava/lang/Runnable;

    .line 55
    return-void
.end method

.method public restart()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;->ran:Z

    .line 50
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;->getPool()Lcom/badlogic/gdx/utils/Pool;

    move-result-object v0

    .line 40
    .local v0, "pool":Lcom/badlogic/gdx/utils/Pool;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;->setPool(Lcom/badlogic/gdx/utils/Pool;)V

    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;->runnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;->setPool(Lcom/badlogic/gdx/utils/Pool;)V

    .line 46
    return-void

    .line 44
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;->setPool(Lcom/badlogic/gdx/utils/Pool;)V

    throw v1
.end method

.method public setRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;->runnable:Ljava/lang/Runnable;

    .line 63
    return-void
.end method
