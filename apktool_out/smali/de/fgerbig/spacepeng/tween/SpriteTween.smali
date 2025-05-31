.class public Lde/fgerbig/spacepeng/tween/SpriteTween;
.super Ljava/lang/Object;
.source "SpriteTween.java"

# interfaces
.implements Laurelienribon/tweenengine/TweenAccessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Laurelienribon/tweenengine/TweenAccessor",
        "<",
        "Lcom/badlogic/gdx/graphics/g2d/Sprite;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final COLOR:I = 0x7

.field public static final POS_X:I = 0x1

.field public static final POS_XY:I = 0x3

.field public static final POS_Y:I = 0x2

.field public static final SCALE_X:I = 0x4

.field public static final SCALE_XY:I = 0x6

.field public static final SCALE_Y:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lde/fgerbig/spacepeng/tween/SpriteTween;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lde/fgerbig/spacepeng/tween/SpriteTween;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValues(Lcom/badlogic/gdx/graphics/g2d/Sprite;I[F)I
    .locals 4
    .param p1, "target"    # Lcom/badlogic/gdx/graphics/g2d/Sprite;
    .param p2, "tweenType"    # I
    .param p3, "returnValues"    # [F

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 35
    packed-switch p2, :pswitch_data_0

    .line 67
    sget-boolean v0, Lde/fgerbig/spacepeng/tween/SpriteTween;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 38
    :pswitch_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getX()F

    move-result v1

    aput v1, p3, v3

    .line 68
    :goto_0
    return v0

    .line 41
    :pswitch_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getY()F

    move-result v1

    aput v1, p3, v3

    goto :goto_0

    .line 44
    :pswitch_2
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getX()F

    move-result v2

    aput v2, p3, v3

    .line 45
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getY()F

    move-result v2

    aput v2, p3, v0

    move v0, v1

    .line 46
    goto :goto_0

    .line 49
    :pswitch_3
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getScaleX()F

    move-result v1

    aput v1, p3, v3

    goto :goto_0

    .line 52
    :pswitch_4
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getScaleY()F

    move-result v1

    aput v1, p3, v3

    goto :goto_0

    .line 55
    :pswitch_5
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getScaleX()F

    move-result v2

    aput v2, p3, v3

    .line 56
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getScaleY()F

    move-result v2

    aput v2, p3, v0

    move v0, v1

    .line 57
    goto :goto_0

    .line 60
    :pswitch_6
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    aput v2, p3, v3

    .line 61
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    aput v2, p3, v0

    .line 62
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    aput v0, p3, v1

    .line 63
    const/4 v0, 0x3

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    aput v1, p3, v0

    .line 64
    const/4 v0, 0x4

    goto :goto_0

    .line 68
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;I[F)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I
    .param p3, "x2"    # [F

    .prologue
    .line 24
    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lde/fgerbig/spacepeng/tween/SpriteTween;->getValues(Lcom/badlogic/gdx/graphics/g2d/Sprite;I[F)I

    move-result v0

    return v0
.end method

.method public setValues(Lcom/badlogic/gdx/graphics/g2d/Sprite;I[F)V
    .locals 5
    .param p1, "target"    # Lcom/badlogic/gdx/graphics/g2d/Sprite;
    .param p2, "tweenType"    # I
    .param p3, "newValues"    # [F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    packed-switch p2, :pswitch_data_0

    .line 103
    sget-boolean v1, Lde/fgerbig/spacepeng/tween/SpriteTween;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 77
    :pswitch_0
    aget v1, p3, v2

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setX(F)V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 80
    :pswitch_1
    aget v1, p3, v2

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setY(F)V

    goto :goto_0

    .line 83
    :pswitch_2
    aget v1, p3, v2

    aget v2, p3, v3

    invoke-virtual {p1, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setPosition(FF)V

    goto :goto_0

    .line 87
    :pswitch_3
    aget v1, p3, v2

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getScaleY()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setScale(FF)V

    goto :goto_0

    .line 90
    :pswitch_4
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getScaleX()F

    move-result v1

    aget v2, p3, v2

    invoke-virtual {p1, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setScale(FF)V

    goto :goto_0

    .line 93
    :pswitch_5
    aget v1, p3, v2

    aget v2, p3, v3

    invoke-virtual {p1, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setScale(FF)V

    goto :goto_0

    .line 97
    :pswitch_6
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    .line 98
    .local v0, "c":Lcom/badlogic/gdx/graphics/Color;
    aget v1, p3, v2

    aget v2, p3, v3

    const/4 v3, 0x2

    aget v3, p3, v3

    const/4 v4, 0x3

    aget v4, p3, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    .line 99
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public bridge synthetic setValues(Ljava/lang/Object;I[F)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I
    .param p3, "x2"    # [F

    .prologue
    .line 24
    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lde/fgerbig/spacepeng/tween/SpriteTween;->setValues(Lcom/badlogic/gdx/graphics/g2d/Sprite;I[F)V

    return-void
.end method
