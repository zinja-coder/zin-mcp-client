.class public Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;
.source "NinePatchDrawable.java"


# instance fields
.field private patch:Lcom/badlogic/gdx/graphics/g2d/NinePatch;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V
    .locals 0
    .param p1, "patch"    # Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;-><init>()V

    .line 40
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;->setPatch(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;)V
    .locals 1
    .param p1, "drawable"    # Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 45
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;->patch:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;->setPatch(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    .line 46
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V
    .locals 6
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    .line 49
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;->patch:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 50
    return-void
.end method

.method public getPatch()Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;->patch:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    return-object v0
.end method

.method public setPatch(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V
    .locals 1
    .param p1, "patch"    # Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;->patch:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 54
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTotalWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;->setMinWidth(F)V

    .line 55
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTotalHeight()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;->setMinHeight(F)V

    .line 56
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getPadTop()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;->setTopHeight(F)V

    .line 57
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getPadRight()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;->setRightWidth(F)V

    .line 58
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getPadBottom()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;->setBottomHeight(F)V

    .line 59
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getPadLeft()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;->setLeftWidth(F)V

    .line 60
    return-void
.end method

.method public tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;
    .locals 3
    .param p1, "tint"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 68
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;)V

    .line 69
    .local v0, "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;->getPatch()Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;->setPatch(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    .line 70
    return-object v0
.end method
