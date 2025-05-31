.class final Lcom/badlogic/gdx/scenes/scene2d/ui/Table$5;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
.source "Table.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1240
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F
    .locals 2
    .param p1, "context"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 1242
    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .end local p1    # "context":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 1243
    .local v0, "background":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v1

    goto :goto_0
.end method
