.class final Lcom/badlogic/gdx/scenes/scene2d/ui/Value$6;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
.source "Value.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F
    .locals 1
    .param p1, "context"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 90
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    .end local p1    # "context":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMaxHeight()F

    move-result v0

    .line 91
    :goto_0
    return v0

    .restart local p1    # "context":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v0

    goto :goto_0
.end method
