.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;
.source "Container.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
        ">",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;"
    }
.end annotation


# instance fields
.field private actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private align:I

.field private background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field private clip:Z

.field private fillX:F

.field private fillY:F

.field private maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field private maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field private minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field private minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field private padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field private padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field private padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field private padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field private prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field private prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field private round:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;-><init>()V

    .line 19
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 20
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 21
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 22
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->round:Z

    .line 31
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->setTransform(Z)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    .local p1, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;, "TT;"
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;-><init>()V

    .line 37
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 38
    return-void
.end method


# virtual methods
.method public addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 170
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use Container#setActor."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addActorAfter(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .param p1, "actorAfter"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 188
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use Container#setActor."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addActorAt(ILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 176
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use Container#setActor."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addActorBefore(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .param p1, "actorBefore"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 182
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use Container#setActor."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public align(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 0
    .param p1, "align"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 543
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    .line 544
    return-object p0
.end method

.method public background(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 0
    .param p1, "background"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 97
    return-object p0
.end method

.method public bottom()Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 569
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    .line 570
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    .line 571
    return-object p0
.end method

.method public center()Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 549
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    const/4 v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    .line 550
    return-object p0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 5
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"    # F

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    const/4 v3, 0x0

    .line 41
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->validate()V

    .line 42
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->isTransform()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 43
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->computeTransform()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->applyTransform(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 44
    invoke-virtual {p0, p1, p2, v3, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->drawBackground(Lcom/badlogic/gdx/graphics/g2d/Batch;FFF)V

    .line 45
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->clip:Z

    if-eqz v2, :cond_1

    .line 46
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->flush()V

    .line 47
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    .local v1, "padLeft":F
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    .line 48
    .local v0, "padBottom":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getWidth()F

    move-result v2

    sub-float/2addr v2, v1

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v3, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getHeight()F

    move-result v3

    sub-float/2addr v3, v0

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v4, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->clipBegin(FFFF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->drawChildren(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 51
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->flush()V

    .line 52
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->clipEnd()V

    .line 56
    .end local v0    # "padBottom":F
    .end local v1    # "padLeft":F
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->resetTransform(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 61
    :goto_1
    return-void

    .line 55
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->drawChildren(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getY()F

    move-result v3

    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->drawBackground(Lcom/badlogic/gdx/graphics/g2d/Batch;FFF)V

    .line 59
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    goto :goto_1
.end method

.method protected drawBackground(Lcom/badlogic/gdx/graphics/g2d/Batch;FFF)V
    .locals 7
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 66
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-nez v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    .line 68
    .local v6, "color":Lcom/badlogic/gdx/graphics/Color;
    iget v0, v6, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, v6, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v2, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v3, v6, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v3, p2

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    .line 69
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getHeight()F

    move-result v5

    move-object v1, p1

    move v2, p3

    move v3, p4

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    goto :goto_0
.end method

.method public drawDebug(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .locals 6
    .param p1, "shapes"    # Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    const/4 v5, 0x0

    .line 717
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->validate()V

    .line 718
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->isTransform()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 719
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->computeTransform()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->applyTransform(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 720
    iget-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->clip:Z

    if-eqz v3, :cond_2

    .line 721
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->flush()V

    .line 722
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v3, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v2

    .local v2, "padLeft":F
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v3, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    .line 723
    .local v1, "padBottom":F
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getWidth()F

    move-result v3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getHeight()F

    move-result v4

    invoke-virtual {p0, v5, v5, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->clipBegin(FFFF)Z

    move-result v0

    .line 725
    .local v0, "draw":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 726
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->drawDebugChildren(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 727
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->clipEnd()V

    .line 731
    .end local v0    # "draw":Z
    .end local v1    # "padBottom":F
    .end local v2    # "padLeft":F
    :cond_0
    :goto_1
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->resetTransform(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 734
    :goto_2
    return-void

    .line 723
    .restart local v1    # "padBottom":F
    .restart local v2    # "padLeft":F
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getWidth()F

    move-result v3

    sub-float/2addr v3, v2

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v4, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getHeight()F

    move-result v4

    sub-float/2addr v4, v1

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v5, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {p0, v2, v1, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->clipBegin(FFFF)Z

    move-result v0

    goto :goto_0

    .line 730
    .end local v1    # "padBottom":F
    .end local v2    # "padLeft":F
    :cond_2
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->drawDebugChildren(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    goto :goto_1

    .line 733
    :cond_3
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->drawDebug(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    goto :goto_2
.end method

.method public fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    const/high16 v0, 0x3f800000    # 1.0f

    .line 503
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillX:F

    .line 504
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillY:F

    .line 505
    return-object p0
.end method

.method public fill(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 521
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillX:F

    .line 522
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillY:F

    .line 523
    return-object p0
.end method

.method public fill(Z)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 3
    .param p1, "fill"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 535
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillX:F

    .line 536
    if-eqz p1, :cond_1

    :goto_1
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillY:F

    .line 537
    return-object p0

    :cond_0
    move v0, v2

    .line 535
    goto :goto_0

    :cond_1
    move v1, v2

    .line 536
    goto :goto_1
.end method

.method public fill(ZZ)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 3
    .param p1, "x"    # Z
    .param p2, "y"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 528
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillX:F

    .line 529
    if-eqz p2, :cond_1

    :goto_1
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillY:F

    .line 530
    return-object p0

    :cond_0
    move v0, v2

    .line 528
    goto :goto_0

    :cond_1
    move v1, v2

    .line 529
    goto :goto_1
.end method

.method public fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 510
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillX:F

    .line 511
    return-object p0
.end method

.method public fillY()Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 516
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillY:F

    .line 517
    return-object p0
.end method

.method public getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getAlign()I
    .locals 1

    .prologue
    .line 688
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    return v0
.end method

.method public getBackground()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 1

    .prologue
    .line 101
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0
.end method

.method public getClip()Z
    .locals 1

    .prologue
    .line 705
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->clip:Z

    return v0
.end method

.method public getFillX()F
    .locals 1

    .prologue
    .line 680
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillX:F

    return v0
.end method

.method public getFillY()F
    .locals 1

    .prologue
    .line 684
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillY:F

    return v0
.end method

.method public getMaxHeight()F
    .locals 3

    .prologue
    .line 628
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    .line 629
    .local v0, "v":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 630
    :cond_0
    return v0
.end method

.method public getMaxHeightValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .prologue
    .line 624
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getMaxWidth()F
    .locals 3

    .prologue
    .line 618
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    .line 619
    .local v0, "v":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 620
    :cond_0
    return v0
.end method

.method public getMaxWidthValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .prologue
    .line 614
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getMinHeight()F
    .locals 2

    .prologue
    .line 590
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getMinHeightValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .prologue
    .line 586
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getMinWidth()F
    .locals 2

    .prologue
    .line 582
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getPadBottom()F
    .locals 1

    .prologue
    .line 657
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadBottomValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .prologue
    .line 653
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadLeft()F
    .locals 1

    .prologue
    .line 648
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadLeftValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .prologue
    .line 644
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadRight()F
    .locals 1

    .prologue
    .line 666
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadRightValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .prologue
    .line 662
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadTop()F
    .locals 1

    .prologue
    .line 639
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadTopValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .prologue
    .line 635
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadX()F
    .locals 2

    .prologue
    .line 671
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getPadY()F
    .locals 2

    .prologue
    .line 676
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getPrefHeight()F
    .locals 3

    .prologue
    .line 608
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    .line 609
    .local v0, "v":F
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 610
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float/2addr v1, v0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v2

    add-float/2addr v1, v2

    return v1
.end method

.method public getPrefHeightValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .prologue
    .line 604
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPrefWidth()F
    .locals 3

    .prologue
    .line 598
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    .line 599
    .local v0, "v":F
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 600
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float/2addr v1, v0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v2

    add-float/2addr v1, v2

    return v1
.end method

.method public getPrefWidthValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .prologue
    .line 594
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .param p1, "height"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 260
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->height(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    .line 261
    return-object p0
.end method

.method public height(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "height"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 251
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 253
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 254
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 255
    return-object p0
.end method

.method public hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "touchable"    # Z

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 709
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->clip:Z

    if-eqz v1, :cond_2

    .line 710
    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getTouchable()Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    if-ne v1, v2, :cond_1

    .line 713
    :cond_0
    :goto_0
    return-object v0

    .line 711
    :cond_1
    cmpg-float v1, p1, v3

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getWidth()F

    move-result v1

    cmpl-float v1, p1, v1

    if-gez v1, :cond_0

    cmpg-float v1, p2, v3

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getHeight()F

    move-result v1

    cmpl-float v1, p2, v1

    if-gez v1, :cond_0

    .line 713
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    goto :goto_0
.end method

.method public layout()V
    .locals 17

    .prologue
    .line 105
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v15, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v9

    .local v9, "padLeft":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v8

    .line 108
    .local v8, "padBottom":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getWidth()F

    move-result v15

    sub-float/2addr v15, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v17}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v16

    sub-float v2, v15, v16

    .line 109
    .local v2, "containerWidth":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getHeight()F

    move-result v15

    sub-float/2addr v15, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v17}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v16

    sub-float v1, v15, v16

    .line 110
    .local v1, "containerHeight":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v7

    .local v7, "minWidth":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v6

    .line 111
    .local v6, "minHeight":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v11

    .local v11, "prefWidth":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v10

    .line 112
    .local v10, "prefHeight":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v5

    .local v5, "maxWidth":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v4

    .line 115
    .local v4, "maxHeight":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillX:F

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_9

    .line 116
    move-object/from16 v0, p0

    iget v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillX:F

    mul-float v12, v2, v15

    .line 119
    .local v12, "width":F
    :goto_1
    cmpg-float v15, v12, v7

    if-gez v15, :cond_2

    move v12, v7

    .line 120
    :cond_2
    const/4 v15, 0x0

    cmpl-float v15, v5, v15

    if-lez v15, :cond_3

    cmpl-float v15, v12, v5

    if-lez v15, :cond_3

    move v12, v5

    .line 123
    :cond_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillY:F

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_a

    .line 124
    move-object/from16 v0, p0

    iget v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillY:F

    mul-float v3, v1, v15

    .line 127
    .local v3, "height":F
    :goto_2
    cmpg-float v15, v3, v6

    if-gez v15, :cond_4

    move v3, v6

    .line 128
    :cond_4
    const/4 v15, 0x0

    cmpl-float v15, v4, v15

    if-lez v15, :cond_5

    cmpl-float v15, v3, v4

    if-lez v15, :cond_5

    move v3, v4

    .line 130
    :cond_5
    move v13, v9

    .line 131
    .local v13, "x":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    and-int/lit8 v15, v15, 0x10

    if-eqz v15, :cond_b

    .line 132
    sub-float v15, v2, v12

    add-float/2addr v13, v15

    .line 136
    :cond_6
    :goto_3
    move v14, v8

    .line 137
    .local v14, "y":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    and-int/lit8 v15, v15, 0x2

    if-eqz v15, :cond_c

    .line 138
    sub-float v15, v1, v3

    add-float/2addr v14, v15

    .line 142
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->round:Z

    if-eqz v15, :cond_8

    .line 143
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v15

    int-to-float v13, v15

    .line 144
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v15

    int-to-float v14, v15

    .line 145
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v15

    int-to-float v12, v15

    .line 146
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v15

    int-to-float v3, v15

    .line 149
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v15, v13, v14, v12, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    .line 150
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v15, v15, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v15, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {v15}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->validate()V

    goto/16 :goto_0

    .line 118
    .end local v3    # "height":F
    .end local v12    # "width":F
    .end local v13    # "x":F
    .end local v14    # "y":F
    :cond_9
    invoke-static {v11, v2}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .restart local v12    # "width":F
    goto :goto_1

    .line 126
    :cond_a
    invoke-static {v10, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .restart local v3    # "height":F
    goto :goto_2

    .line 133
    .restart local v13    # "x":F
    :cond_b
    move-object/from16 v0, p0

    iget v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    and-int/lit8 v15, v15, 0x8

    if-nez v15, :cond_6

    .line 134
    sub-float v15, v2, v12

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    add-float/2addr v13, v15

    goto :goto_3

    .line 139
    .restart local v14    # "y":F
    :cond_c
    move-object/from16 v0, p0

    iget v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    and-int/lit8 v15, v15, 0x4

    if-nez v15, :cond_7

    .line 140
    sub-float v15, v1, v3

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    add-float/2addr v14, v15

    goto :goto_4
.end method

.method public left()Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 562
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    .line 563
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    .line 564
    return-object p0
.end method

.method public maxHeight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .param p1, "maxHeight"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 413
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 414
    return-object p0
.end method

.method public maxHeight(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "maxHeight"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 390
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxHeight cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 392
    return-object p0
.end method

.method public maxSize(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .param p1, "size"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 397
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    .line 398
    return-object p0
.end method

.method public maxSize(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "width"    # F
    .param p2, "height"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 403
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    .line 404
    return-object p0
.end method

.method public maxSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "size"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 368
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 370
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 371
    return-object p0
.end method

.method public maxSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "width"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p2, "height"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 376
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "width cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_1
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 379
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 380
    return-object p0
.end method

.method public maxWidth(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .param p1, "maxWidth"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 408
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 409
    return-object p0
.end method

.method public maxWidth(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "maxWidth"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 384
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxWidth cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 386
    return-object p0
.end method

.method public minHeight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .param p1, "minHeight"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 311
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 312
    return-object p0
.end method

.method public minHeight(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "minHeight"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 288
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minHeight cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 290
    return-object p0
.end method

.method public minSize(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .param p1, "size"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 295
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    .line 296
    return-object p0
.end method

.method public minSize(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "width"    # F
    .param p2, "height"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 301
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    .line 302
    return-object p0
.end method

.method public minSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "size"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 266
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 268
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 269
    return-object p0
.end method

.method public minSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "width"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p2, "height"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 274
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "width cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_1
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 277
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 278
    return-object p0
.end method

.method public minWidth(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .param p1, "minWidth"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 306
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 307
    return-object p0
.end method

.method public minWidth(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "minWidth"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 282
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minWidth cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 284
    return-object p0
.end method

.method public pad(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .param p1, "pad"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 465
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    .line 466
    .local v0, "value":Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 467
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 468
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 469
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 470
    return-object p0
.end method

.method public pad(FFFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .param p1, "top"    # F
    .param p2, "left"    # F
    .param p3, "bottom"    # F
    .param p4, "right"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 474
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 475
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 476
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 477
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 478
    return-object p0
.end method

.method public pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "pad"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 419
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pad cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 421
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 422
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 423
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 424
    return-object p0
.end method

.method public pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "top"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p2, "left"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p3, "bottom"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p4, "right"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 428
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "top cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "left cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bottom cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_2
    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "right cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_3
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 433
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 434
    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 435
    iput-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 436
    return-object p0
.end method

.method public padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .param p1, "padBottom"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 492
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 493
    return-object p0
.end method

.method public padBottom(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "padBottom"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 452
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "padBottom cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 454
    return-object p0
.end method

.method public padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .param p1, "padLeft"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 487
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 488
    return-object p0
.end method

.method public padLeft(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "padLeft"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 446
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "padLeft cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 448
    return-object p0
.end method

.method public padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .param p1, "padRight"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 497
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 498
    return-object p0
.end method

.method public padRight(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "padRight"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 458
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "padRight cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 460
    return-object p0
.end method

.method public padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .param p1, "padTop"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 482
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 483
    return-object p0
.end method

.method public padTop(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "padTop"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 440
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "padTop cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 442
    return-object p0
.end method

.method public prefHeight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .param p1, "prefHeight"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 362
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 363
    return-object p0
.end method

.method public prefHeight(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "prefHeight"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 339
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "prefHeight cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 341
    return-object p0
.end method

.method public prefSize(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .param p1, "size"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 352
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    .line 353
    return-object p0
.end method

.method public prefSize(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "width"    # F
    .param p2, "height"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 346
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    .line 347
    return-object p0
.end method

.method public prefSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "size"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 317
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 319
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 320
    return-object p0
.end method

.method public prefSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "width"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p2, "height"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 325
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "width cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_1
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 328
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 329
    return-object p0
.end method

.method public prefWidth(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .param p1, "prefWidth"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 357
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 358
    return-object p0
.end method

.method public prefWidth(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "prefWidth"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 333
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "prefWidth cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 335
    return-object p0
.end method

.method public removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .locals 1
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 192
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    .line 194
    :goto_0
    return v0

    .line 193
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 194
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public right()Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 576
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    .line 577
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    .line 578
    return-object p0
.end method

.method public setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    .local p1, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;, "TT;"
    if-ne p1, p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "actor cannot be the Container."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-ne p1, v0, :cond_2

    .line 160
    :cond_1
    :goto_0
    return-void

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-super {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    .line 158
    :cond_3
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 159
    if-eqz p1, :cond_1

    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_0
.end method

.method public setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .locals 1
    .param p1, "background"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .prologue
    .line 75
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Z)V

    .line 76
    return-void
.end method

.method public setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Z)V
    .locals 4
    .param p1, "background"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .param p2, "adjustPadding"    # Z

    .prologue
    .line 83
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-ne v0, p1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 85
    if-eqz p2, :cond_0

    .line 86
    if-nez p1, :cond_2

    .line 87
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    .line 90
    :goto_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->invalidate()V

    goto :goto_0

    .line 89
    :cond_2
    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v0

    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v1

    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v2

    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->pad(FFFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    goto :goto_1
.end method

.method public setClip(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 699
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->clip:Z

    .line 700
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->setTransform(Z)V

    .line 701
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->invalidate()V

    .line 702
    return-void
.end method

.method public setRound(Z)V
    .locals 0
    .param p1, "round"    # Z

    .prologue
    .line 693
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->round:Z

    .line 694
    return-void
.end method

.method public size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .param p1, "size"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 224
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->size(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    .line 225
    return-object p0
.end method

.method public size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "width"    # F
    .param p2, "height"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->size(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    .line 231
    return-object p0
.end method

.method public size(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "size"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 201
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 202
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 203
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 204
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 205
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 206
    return-object p0
.end method

.method public size(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "width"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p2, "height"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "width cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_1
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 214
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 215
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 216
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 217
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 218
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 219
    return-object p0
.end method

.method public top()Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 555
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    .line 556
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    .line 557
    return-object p0
.end method

.method public width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .param p1, "width"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 245
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->width(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    .line 246
    return-object p0
.end method

.method public width(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "width"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 236
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "width cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 238
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 239
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 240
    return-object p0
.end method
