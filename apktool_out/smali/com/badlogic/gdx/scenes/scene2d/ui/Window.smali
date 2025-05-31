.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Window;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;
    }
.end annotation


# static fields
.field private static final MOVE:I = 0x20

.field private static final tmpPosition:Lcom/badlogic/gdx/math/Vector2;

.field private static final tmpSize:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field buttonTable:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field dragging:Z

.field isModal:Z

.field isMovable:Z

.field isResizable:Z

.field keepWithinStage:Z

.field resizeBorder:I

.field private style:Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

.field private title:Ljava/lang/String;

.field private titleAlignment:I

.field private titleCache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->tmpPosition:Lcom/badlogic/gdx/math/Vector2;

    .line 42
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->tmpSize:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .prologue
    .line 56
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;)V

    .line 57
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setSkin(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .param p3, "styleName"    # Ljava/lang/String;

    .prologue
    .line 61
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;)V

    .line 62
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setSkin(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    .prologue
    const/high16 v2, 0x43160000    # 150.0f

    const/4 v1, 0x1

    .line 65
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 48
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isMovable:Z

    .line 49
    const/16 v0, 0x8

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->resizeBorder:I

    .line 51
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->titleAlignment:I

    .line 52
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->keepWithinStage:Z

    .line 66
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "title cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->title:Ljava/lang/String;

    .line 68
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 69
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setClip(Z)V

    .line 70
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;)V

    .line 71
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setWidth(F)V

    .line 72
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setHeight(F)V

    .line 73
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setTitle(Ljava/lang/String;)V

    .line 75
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->buttonTable:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 76
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->buttonTable:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 78
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Window;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->addCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 84
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Window;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 185
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 8
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"    # F

    .prologue
    const/4 v1, 0x0

    .line 230
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v7

    .line 231
    .local v7, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getKeyboardFocus()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v7, p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setKeyboardFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->keepWithinStage()V

    .line 235
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->stageBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_1

    .line 236
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->tmpPosition:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 237
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->tmpSize:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v1

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 238
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getX()F

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->tmpPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float v3, v0, v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getY()F

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->tmpPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float v4, v0, v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getX()F

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->tmpSize:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float v5, v0, v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getY()F

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->tmpSize:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float v6, v0, v1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->drawStageBackground(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFFF)V

    .line 242
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 243
    return-void
.end method

.method protected drawBackground(Lcom/badlogic/gdx/graphics/g2d/Batch;FFF)V
    .locals 9
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 252
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getWidth()F

    move-result v3

    .local v3, "width":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getHeight()F

    move-result v1

    .line 253
    .local v1, "height":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getPadTop()F

    move-result v2

    .line 255
    .local v2, "padTop":F
    invoke-super {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->drawBackground(Lcom/badlogic/gdx/graphics/g2d/Batch;FFF)V

    .line 258
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->buttonTable:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    iput v5, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 259
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->buttonTable:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->pack()V

    .line 260
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->buttonTable:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->buttonTable:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getWidth()F

    move-result v5

    sub-float v5, v3, v5

    sub-float v6, v1, v2

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->buttonTable:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getHeight()F

    move-result v7

    sub-float v7, v1, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setPosition(FF)V

    .line 261
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->buttonTable:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v4, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 264
    add-float/2addr p4, v1

    .line 265
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->titleCache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getBounds()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    .line 266
    .local v0, "bounds":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->titleAlignment:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_1

    .line 267
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getPadLeft()F

    move-result v4

    add-float/2addr p3, v4

    .line 272
    :goto_0
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->titleAlignment:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_0

    .line 273
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->titleAlignment:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_3

    .line 274
    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    sub-float v4, v2, v4

    sub-float/2addr p4, v4

    .line 278
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->titleCache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    sget-object v5, Lcom/badlogic/gdx/graphics/Color;->tmp:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    iget-object v6, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->titleFontColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/graphics/Color;->mul(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->tint(Lcom/badlogic/gdx/graphics/Color;)V

    .line 279
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->titleCache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    float-to-int v5, p3

    int-to-float v5, v5

    float-to-int v6, p4

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setPosition(FF)V

    .line 280
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->titleCache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v4, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 281
    return-void

    .line 268
    :cond_1
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->titleAlignment:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_2

    .line 269
    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    sub-float v4, v3, v4

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getPadRight()F

    move-result v5

    sub-float/2addr v4, v5

    add-float/2addr p3, v4

    goto :goto_0

    .line 271
    :cond_2
    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    sub-float v4, v3, v4

    div-float/2addr v4, v8

    add-float/2addr p3, v4

    goto :goto_0

    .line 276
    :cond_3
    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    sub-float v4, v2, v4

    div-float/2addr v4, v8

    sub-float/2addr p4, v4

    goto :goto_1
.end method

.method protected drawStageBackground(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFFF)V
    .locals 7
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "width"    # F
    .param p6, "height"    # F

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    .line 247
    .local v6, "color":Lcom/badlogic/gdx/graphics/Color;
    iget v0, v6, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, v6, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v2, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v3, v6, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v3, p2

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    .line 248
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->stageBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 249
    return-void
.end method

.method public getButtonTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->buttonTable:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    return-object v0
.end method

.method public getPrefWidth()F
    .locals 3

    .prologue
    .line 353
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPrefWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getTitleWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getPadLeft()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getPadRight()F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleWidth()F
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->titleCache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getBounds()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    return v0
.end method

.method public hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "touchable"    # Z

    .prologue
    .line 284
    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v2

    .line 285
    .local v2, "hit":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-nez v2, :cond_1

    iget-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isModal:Z

    if-eqz v3, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getTouchable()Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    move-result-object v3

    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    if-ne v3, v4, :cond_1

    .line 295
    .end local p0    # "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Window;
    :cond_0
    :goto_0
    return-object p0

    .line 286
    .restart local p0    # "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Window;
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getHeight()F

    move-result v1

    .line 287
    .local v1, "height":F
    if-eqz v2, :cond_2

    if-ne v2, p0, :cond_3

    :cond_2
    move-object p0, v2

    goto :goto_0

    .line 288
    :cond_3
    cmpg-float v3, p2, v1

    if-gtz v3, :cond_5

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getPadTop()F

    move-result v3

    sub-float v3, v1, v3

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_5

    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_5

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getWidth()F

    move-result v3

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_5

    .line 290
    move-object v0, v2

    .line 291
    .local v0, "current":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :goto_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v3

    if-eq v3, p0, :cond_4

    .line 292
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    goto :goto_1

    .line 293
    :cond_4
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getCell(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    if-nez v3, :cond_0

    .end local v0    # "current":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_5
    move-object p0, v2

    .line 295
    goto :goto_0
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->dragging:Z

    return v0
.end method

.method public isModal()Z
    .locals 1

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isModal:Z

    return v0
.end method

.method public isMovable()Z
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isMovable:Z

    return v0
.end method

.method public isResizable()Z
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isResizable:Z

    return v0
.end method

.method keepWithinStage()V
    .locals 12

    .prologue
    const/16 v8, 0x8

    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v7, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    .line 204
    iget-boolean v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->keepWithinStage:Z

    if-nez v5, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v4

    .line 206
    .local v4, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getCamera()Lcom/badlogic/gdx/graphics/Camera;

    move-result-object v0

    .line 207
    .local v0, "camera":Lcom/badlogic/gdx/graphics/Camera;
    instance-of v5, v0, Lcom/badlogic/gdx/graphics/OrthographicCamera;

    if-eqz v5, :cond_5

    move-object v1, v0

    .line 208
    check-cast v1, Lcom/badlogic/gdx/graphics/OrthographicCamera;

    .line 209
    .local v1, "orthographicCamera":Lcom/badlogic/gdx/graphics/OrthographicCamera;
    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v3

    .line 210
    .local v3, "parentWidth":F
    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v2

    .line 211
    .local v2, "parentHeight":F
    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getX(I)F

    move-result v5

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v5, v6

    div-float v6, v3, v9

    iget v7, v1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    div-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 212
    iget-object v5, v0, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    div-float v6, v3, v9

    iget v7, v1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    const/16 v6, 0x10

    invoke-virtual {p0, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getY(I)F

    move-result v6

    const/16 v7, 0x10

    invoke-virtual {p0, v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setPosition(FFI)V

    .line 213
    :cond_2
    invoke-virtual {p0, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getX(I)F

    move-result v5

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v5, v6

    neg-float v6, v3

    div-float/2addr v6, v9

    iget v7, v1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    div-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    .line 214
    iget-object v5, v0, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    div-float v6, v3, v9

    iget v7, v1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-virtual {p0, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getY(I)F

    move-result v6

    invoke-virtual {p0, v5, v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setPosition(FFI)V

    .line 215
    :cond_3
    invoke-virtual {p0, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getY(I)F

    move-result v5

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v5, v6

    div-float v6, v2, v9

    iget v7, v1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    div-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    .line 216
    invoke-virtual {p0, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getX(I)F

    move-result v5

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float v7, v2, v9

    iget v8, v1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {p0, v5, v6, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setPosition(FFI)V

    .line 217
    :cond_4
    invoke-virtual {p0, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getY(I)F

    move-result v5

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v5, v6

    neg-float v6, v2

    div-float/2addr v6, v9

    iget v7, v1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    div-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    .line 218
    invoke-virtual {p0, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getX(I)F

    move-result v5

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float v7, v2, v9

    iget v8, v1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-virtual {p0, v5, v6, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setPosition(FFI)V

    goto/16 :goto_0

    .line 219
    .end local v1    # "orthographicCamera":Lcom/badlogic/gdx/graphics/OrthographicCamera;
    .end local v2    # "parentHeight":F
    .end local v3    # "parentWidth":F
    :cond_5
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v5

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getRoot()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v6

    if-ne v5, v6, :cond_0

    .line 220
    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v3

    .line 221
    .restart local v3    # "parentWidth":F
    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v2

    .line 222
    .restart local v2    # "parentHeight":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getX()F

    move-result v5

    cmpg-float v5, v5, v7

    if-gez v5, :cond_6

    invoke-virtual {p0, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setX(F)V

    .line 223
    :cond_6
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getRight()F

    move-result v5

    cmpl-float v5, v5, v3

    if-lez v5, :cond_7

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getWidth()F

    move-result v5

    sub-float v5, v3, v5

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setX(F)V

    .line 224
    :cond_7
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getY()F

    move-result v5

    cmpg-float v5, v5, v7

    if-gez v5, :cond_8

    invoke-virtual {p0, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setY(F)V

    .line 225
    :cond_8
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getTop()F

    move-result v5

    cmpl-float v5, v5, v2

    if-lez v5, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getHeight()F

    move-result v5

    sub-float v5, v2, v5

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setY(F)V

    goto/16 :goto_0
.end method

.method public setKeepWithinStage(Z)V
    .locals 0
    .param p1, "keepWithinStage"    # Z

    .prologue
    .line 329
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->keepWithinStage:Z

    .line 330
    return-void
.end method

.method public setModal(Z)V
    .locals 0
    .param p1, "isModal"    # Z

    .prologue
    .line 325
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isModal:Z

    .line 326
    return-void
.end method

.method public setMovable(Z)V
    .locals 0
    .param p1, "isMovable"    # Z

    .prologue
    .line 317
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isMovable:Z

    .line 318
    return-void
.end method

.method public setResizable(Z)V
    .locals 0
    .param p1, "isResizable"    # Z

    .prologue
    .line 337
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isResizable:Z

    .line 338
    return-void
.end method

.method public setResizeBorder(I)V
    .locals 0
    .param p1, "resizeBorder"    # I

    .prologue
    .line 341
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->resizeBorder:I

    .line 342
    return-void
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;)V
    .locals 2
    .param p1, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    .prologue
    .line 188
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "style cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    .line 190
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 191
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->titleFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->titleCache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    .line 192
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->titleCache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->titleFontColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 193
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->title:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->title:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setTitle(Ljava/lang/String;)V

    .line 194
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->invalidateHierarchy()V

    .line 195
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 299
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->title:Ljava/lang/String;

    .line 300
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->titleCache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0, p1, v1, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setMultiLineText(Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .line 301
    return-void
.end method

.method public setTitleAlignment(I)V
    .locals 0
    .param p1, "titleAlignment"    # I

    .prologue
    .line 309
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->titleAlignment:I

    .line 310
    return-void
.end method
