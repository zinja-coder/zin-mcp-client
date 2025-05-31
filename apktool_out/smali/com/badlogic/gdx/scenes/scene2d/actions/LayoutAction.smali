.class public Lcom/badlogic/gdx/scenes/scene2d/actions/LayoutAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "LayoutAction.java"


# instance fields
.field private enabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    return-void
.end method


# virtual methods
.method public act(F)Z
    .locals 2
    .param p1, "delta"    # F

    .prologue
    .line 36
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/LayoutAction;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/LayoutAction;->enabled:Z

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->setLayoutEnabled(Z)V

    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/LayoutAction;->enabled:Z

    return v0
.end method

.method public setLayoutEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/LayoutAction;->enabled:Z

    .line 46
    return-void
.end method

.method public setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 3
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 31
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Actor must implement layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 33
    return-void
.end method
