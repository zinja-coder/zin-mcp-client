.class public Lcom/badlogic/gdx/scenes/scene2d/actions/AddListenerAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "AddListenerAction.java"


# instance fields
.field private capture:Z

.field private listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;


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
    .line 30
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AddListenerAction;->capture:Z

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AddListenerAction;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AddListenerAction;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 34
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AddListenerAction;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AddListenerAction;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    goto :goto_0
.end method

.method public getCapture()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AddListenerAction;->capture:Z

    return v0
.end method

.method public getListener()Lcom/badlogic/gdx/scenes/scene2d/EventListener;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AddListenerAction;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->reset()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AddListenerAction;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    .line 56
    return-void
.end method

.method public setCapture(Z)V
    .locals 0
    .param p1, "capture"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AddListenerAction;->capture:Z

    .line 51
    return-void
.end method

.method public setListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AddListenerAction;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    .line 43
    return-void
.end method
