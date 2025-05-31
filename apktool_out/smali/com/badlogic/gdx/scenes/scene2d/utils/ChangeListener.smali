.class public abstract Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;
.super Ljava/lang/Object;
.source "ChangeListener.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public abstract changed(Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
.end method

.method public handle(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z
    .locals 3
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/Event;

    .prologue
    const/4 v2, 0x0

    .line 27
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    if-nez v0, :cond_0

    .line 29
    :goto_0
    return v2

    :cond_0
    move-object v0, p1

    .line 28
    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->getTarget()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;->changed(Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_0
.end method
