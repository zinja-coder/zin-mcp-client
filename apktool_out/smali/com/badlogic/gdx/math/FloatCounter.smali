.class public Lcom/badlogic/gdx/math/FloatCounter;
.super Ljava/lang/Object;
.source "FloatCounter.java"


# instance fields
.field public average:F

.field public count:I

.field public latest:F

.field public max:F

.field public final mean:Lcom/badlogic/gdx/math/WindowedMean;

.field public min:F

.field public total:F

.field public value:F


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "windowSize"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/math/WindowedMean;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/math/WindowedMean;-><init>(I)V

    :goto_0
    iput-object v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->mean:Lcom/badlogic/gdx/math/WindowedMean;

    .line 47
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/FloatCounter;->reset()V

    .line 48
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public put(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 53
    iput p1, p0, Lcom/badlogic/gdx/math/FloatCounter;->latest:F

    .line 54
    iget v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->total:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->total:F

    .line 55
    iget v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->count:I

    .line 56
    iget v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->total:F

    iget v1, p0, Lcom/badlogic/gdx/math/FloatCounter;->count:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->average:F

    .line 58
    iget-object v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->mean:Lcom/badlogic/gdx/math/WindowedMean;

    if-eqz v0, :cond_3

    .line 59
    iget-object v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->mean:Lcom/badlogic/gdx/math/WindowedMean;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/WindowedMean;->addValue(F)V

    .line 60
    iget-object v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->mean:Lcom/badlogic/gdx/math/WindowedMean;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/WindowedMean;->getMean()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->value:F

    .line 64
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->mean:Lcom/badlogic/gdx/math/WindowedMean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->mean:Lcom/badlogic/gdx/math/WindowedMean;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/WindowedMean;->hasEnoughData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->value:F

    iget v1, p0, Lcom/badlogic/gdx/math/FloatCounter;->min:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->value:F

    iput v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->min:F

    .line 66
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->value:F

    iget v1, p0, Lcom/badlogic/gdx/math/FloatCounter;->max:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->value:F

    iput v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->max:F

    .line 68
    :cond_2
    return-void

    .line 62
    :cond_3
    iget v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->latest:F

    iput v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->value:F

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->count:I

    .line 73
    iput v1, p0, Lcom/badlogic/gdx/math/FloatCounter;->total:F

    .line 74
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->min:F

    .line 75
    const/4 v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->max:F

    .line 76
    iput v1, p0, Lcom/badlogic/gdx/math/FloatCounter;->average:F

    .line 77
    iput v1, p0, Lcom/badlogic/gdx/math/FloatCounter;->latest:F

    .line 78
    iput v1, p0, Lcom/badlogic/gdx/math/FloatCounter;->value:F

    .line 79
    iget-object v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->mean:Lcom/badlogic/gdx/math/WindowedMean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->mean:Lcom/badlogic/gdx/math/WindowedMean;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/WindowedMean;->clear()V

    .line 80
    :cond_0
    return-void
.end method
