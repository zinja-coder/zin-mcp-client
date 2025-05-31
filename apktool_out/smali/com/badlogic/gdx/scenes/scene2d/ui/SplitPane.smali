.class public Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;
.source "SplitPane.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;
    }
.end annotation


# instance fields
.field private firstScissors:Lcom/badlogic/gdx/math/Rectangle;

.field private firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private firstWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

.field handleBounds:Lcom/badlogic/gdx/math/Rectangle;

.field handlePosition:Lcom/badlogic/gdx/math/Vector2;

.field lastPoint:Lcom/badlogic/gdx/math/Vector2;

.field maxAmount:F

.field minAmount:F

.field private oldSplitAmount:F

.field private secondScissors:Lcom/badlogic/gdx/math/Rectangle;

.field private secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private secondWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

.field splitAmount:F

.field style:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;

.field vertical:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;ZLcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 6
    .param p1, "firstWidget"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "secondWidget"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p3, "vertical"    # Z
    .param p4, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "default-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p3, :cond_0

    const-string v0, "vertical"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;ZLcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V

    .line 59
    return-void

    .line 58
    :cond_0
    const-string v0, "horizontal"

    goto :goto_0
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;ZLcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 1
    .param p1, "firstWidget"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "secondWidget"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p3, "vertical"    # Z
    .param p4, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .param p5, "styleName"    # Ljava/lang/String;

    .prologue
    .line 64
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;

    invoke-virtual {p4, p5, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;ZLcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;ZLcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;)V
    .locals 2
    .param p1, "firstWidget"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "secondWidget"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p3, "vertical"    # Z
    .param p4, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;-><init>()V

    .line 43
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->maxAmount:F

    .line 46
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 47
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 48
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handleBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 49
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstScissors:Lcom/badlogic/gdx/math/Rectangle;

    .line 50
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondScissors:Lcom/badlogic/gdx/math/Rectangle;

    .line 52
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    .line 53
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handlePosition:Lcom/badlogic/gdx/math/Vector2;

    .line 70
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 71
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 72
    iput-boolean p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->vertical:Z

    .line 73
    invoke-virtual {p0, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;)V

    .line 74
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->setFirstWidget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 75
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->setSecondWidget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 76
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->getPrefWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->getPrefHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->setSize(FF)V

    .line 77
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->initialize()V

    .line 78
    return-void
.end method

.method private calculateHorizBoundsAndPositions()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 197
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;

    iget-object v1, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;->handle:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 199
    .local v1, "handle":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->getHeight()F

    move-result v3

    .line 201
    .local v3, "height":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->getWidth()F

    move-result v6

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v7

    sub-float v0, v6, v7

    .line 202
    .local v0, "availWidth":F
    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    mul-float/2addr v6, v0

    float-to-int v6, v6

    int-to-float v4, v6

    .line 203
    .local v4, "leftAreaWidth":F
    sub-float v5, v0, v4

    .line 204
    .local v5, "rightAreaWidth":F
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v2

    .line 206
    .local v2, "handleWidth":F
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v6, v8, v8, v4, v3}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    .line 207
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    add-float v7, v4, v2

    invoke-virtual {v6, v7, v8, v5, v3}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    .line 208
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handleBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v6, v4, v8, v2, v3}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    .line 209
    return-void
.end method

.method private calculateVertBoundsAndPositions()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 212
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;

    iget-object v2, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;->handle:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 214
    .local v2, "handle":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->getWidth()F

    move-result v6

    .line 215
    .local v6, "width":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->getHeight()F

    move-result v4

    .line 217
    .local v4, "height":F
    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v7

    sub-float v0, v4, v7

    .line 218
    .local v0, "availHeight":F
    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    mul-float/2addr v7, v0

    float-to-int v7, v7

    int-to-float v5, v7

    .line 219
    .local v5, "topAreaHeight":F
    sub-float v1, v0, v5

    .line 220
    .local v1, "bottomAreaHeight":F
    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v3

    .line 222
    .local v3, "handleHeight":F
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    sub-float v8, v4, v5

    invoke-virtual {v7, v9, v8, v6, v5}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    .line 223
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v7, v9, v9, v6, v1}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    .line 224
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handleBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v7, v9, v1, v6, v3}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    .line 225
    return-void
.end method

.method private initialize()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 130
    return-void
.end method


# virtual methods
.method public addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 296
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use ScrollPane#setWidget."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addActorAt(ILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 300
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use ScrollPane#setWidget."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addActorBefore(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .param p1, "actorBefore"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 304
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use ScrollPane#setWidget."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 8
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"    # F

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->validate()V

    .line 231
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    .line 233
    .local v6, "color":Lcom/badlogic/gdx/graphics/Color;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;

    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;->handle:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 234
    .local v0, "handle":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->computeTransform()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->applyTransform(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 235
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v7

    .line 236
    .local v7, "transform":Lcom/badlogic/gdx/math/Matrix4;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v1, :cond_1

    .line 237
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstScissors:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->calculateScissors(Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)V

    .line 238
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstScissors:Lcom/badlogic/gdx/math/Rectangle;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v2, v6, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v2, p2

    invoke-virtual {v1, p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 240
    :cond_0
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->flush()V

    .line 241
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;

    .line 244
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v1, :cond_3

    .line 245
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondScissors:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->calculateScissors(Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)V

    .line 246
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondScissors:Lcom/badlogic/gdx/math/Rectangle;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 247
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v2, v6, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v2, p2

    invoke-virtual {v1, p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 248
    :cond_2
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->flush()V

    .line 249
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;

    .line 252
    :cond_3
    iget v1, v6, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v6, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, v6, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v4, p2

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    .line 253
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handleBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handleBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handleBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handleBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 254
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->resetTransform(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 255
    return-void
.end method

.method public getMinHeight()F
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public getMinWidth()F
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public getPrefHeight()F
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 176
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v2, :cond_0

    move v0, v3

    .line 178
    .local v0, "first":F
    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v2, :cond_2

    move v1, v3

    .line 180
    .local v1, "second":F
    :goto_1
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->vertical:Z

    if-nez v2, :cond_4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 181
    :goto_2
    return v2

    .line 176
    .end local v0    # "first":F
    .end local v1    # "second":F
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v2, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefHeight()F

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v0

    goto :goto_0

    .line 178
    .restart local v0    # "first":F
    :cond_2
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v2, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefHeight()F

    move-result v1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v1

    goto :goto_1

    .line 181
    .restart local v1    # "second":F
    :cond_4
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;->handle:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v2

    add-float/2addr v2, v0

    add-float/2addr v2, v1

    goto :goto_2
.end method

.method public getPrefWidth()F
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 166
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v2, :cond_0

    move v0, v3

    .line 168
    .local v0, "first":F
    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v2, :cond_2

    move v1, v3

    .line 170
    .local v1, "second":F
    :goto_1
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->vertical:Z

    if-eqz v2, :cond_4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 171
    :goto_2
    return v2

    .line 166
    .end local v0    # "first":F
    .end local v1    # "second":F
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v2, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefWidth()F

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v0

    goto :goto_0

    .line 168
    .restart local v0    # "first":F
    :cond_2
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v2, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefWidth()F

    move-result v1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v1

    goto :goto_1

    .line 171
    .restart local v1    # "second":F
    :cond_4
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;->handle:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v2

    add-float/2addr v2, v0

    add-float/2addr v2, v1

    goto :goto_2
.end method

.method public getSplit()F
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    return v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;

    return-object v0
.end method

.method public layout()V
    .locals 8

    .prologue
    .line 145
    iget-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->vertical:Z

    if-nez v4, :cond_2

    .line 146
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->calculateHorizBoundsAndPositions()V

    .line 150
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 151
    .local v0, "firstWidget":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-eqz v0, :cond_0

    .line 152
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 153
    .local v1, "firstWidgetBounds":Lcom/badlogic/gdx/math/Rectangle;
    iget v4, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v5, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v6, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v7, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    .line 154
    instance-of v4, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v4, :cond_0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    .end local v0    # "firstWidget":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->validate()V

    .line 156
    .end local v1    # "firstWidgetBounds":Lcom/badlogic/gdx/math/Rectangle;
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 157
    .local v2, "secondWidget":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-eqz v2, :cond_1

    .line 158
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 159
    .local v3, "secondWidgetBounds":Lcom/badlogic/gdx/math/Rectangle;
    iget v4, v3, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v5, v3, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v6, v3, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v7, v3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    .line 160
    instance-of v4, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v4, :cond_1

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    .end local v2    # "secondWidget":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->validate()V

    .line 162
    .end local v3    # "secondWidgetBounds":Lcom/badlogic/gdx/math/Rectangle;
    :cond_1
    return-void

    .line 148
    :cond_2
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->calculateVertBoundsAndPositions()V

    goto :goto_0
.end method

.method public removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .locals 2
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 308
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use ScrollPane#setWidget(null)."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFirstWidget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1
    .param p1, "widget"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 281
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-super {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    .line 282
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 283
    if-eqz p1, :cond_1

    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 284
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->invalidate()V

    .line 285
    return-void
.end method

.method public setMaxSplitAmount(F)V
    .locals 2
    .param p1, "maxAmount"    # F

    .prologue
    .line 274
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "maxAmount has to be >= 0"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->minAmount:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "maxAmount has to be > minAmount"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_1
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->maxAmount:F

    .line 277
    return-void
.end method

.method public setMinSplitAmount(F)V
    .locals 2
    .param p1, "minAmount"    # F

    .prologue
    .line 268
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "minAmount has to be >= 0"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->maxAmount:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "minAmount has to be < maxAmount"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_1
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->minAmount:F

    .line 271
    return-void
.end method

.method public setSecondWidget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1
    .param p1, "widget"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-super {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    .line 290
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 291
    if-eqz p1, :cond_1

    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 292
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->invalidate()V

    .line 293
    return-void
.end method

.method public setSplitAmount(F)V
    .locals 2
    .param p1, "split"    # F

    .prologue
    .line 259
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->maxAmount:F

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->minAmount:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    .line 260
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->invalidate()V

    .line 261
    return-void
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;)V
    .locals 0
    .param p1, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;

    .line 134
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->invalidateHierarchy()V

    .line 135
    return-void
.end method

.method public setVertical(Z)V
    .locals 0
    .param p1, "vertical"    # Z

    .prologue
    .line 193
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->vertical:Z

    .line 194
    return-void
.end method
