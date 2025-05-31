.class public Lde/fgerbig/spacepeng/tween/CellTween;
.super Ljava/lang/Object;
.source "CellTween.java"

# interfaces
.implements Laurelienribon/tweenengine/TweenAccessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Laurelienribon/tweenengine/TweenAccessor",
        "<",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;",
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
    .line 23
    const-class v0, Lde/fgerbig/spacepeng/tween/CellTween;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lde/fgerbig/spacepeng/tween/CellTween;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValues(Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;I[F)I
    .locals 4
    .param p1, "target"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .param p2, "tweenType"    # I
    .param p3, "returnValues"    # [F

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 34
    packed-switch p2, :pswitch_data_0

    .line 66
    sget-boolean v0, Lde/fgerbig/spacepeng/tween/CellTween;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    move v0, v1

    .line 67
    :goto_0
    :pswitch_1
    return v0

    .line 54
    :pswitch_2
    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->getMaxWidth()F

    move-result v3

    aput v3, p3, v2

    .line 55
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->getMaxHeight()F

    move-result v2

    aput v2, p3, v0

    move v0, v1

    .line 56
    goto :goto_0

    .line 63
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 67
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;I[F)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I
    .param p3, "x2"    # [F

    .prologue
    .line 23
    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lde/fgerbig/spacepeng/tween/CellTween;->getValues(Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;I[F)I

    move-result v0

    return v0
.end method

.method public setValues(Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;I[F)V
    .locals 2
    .param p1, "target"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .param p2, "tweenType"    # I
    .param p3, "newValues"    # [F

    .prologue
    .line 73
    packed-switch p2, :pswitch_data_0

    .line 102
    sget-boolean v0, Lde/fgerbig/spacepeng/tween/CellTween;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 92
    :pswitch_0
    const/4 v0, 0x0

    aget v0, p3, v0

    const/4 v1, 0x1

    aget v1, p3, v1

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxSize(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 105
    :cond_0
    :pswitch_1
    return-void

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic setValues(Ljava/lang/Object;I[F)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I
    .param p3, "x2"    # [F

    .prologue
    .line 23
    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lde/fgerbig/spacepeng/tween/CellTween;->setValues(Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;I[F)V

    return-void
.end method
