.class public Lcom/badlogic/gdx/backends/android/surfaceview/RatioResolutionStrategy;
.super Ljava/lang/Object;
.source "RatioResolutionStrategy.java"

# interfaces
.implements Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;


# instance fields
.field private final ratio:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "ratio"    # F

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/RatioResolutionStrategy;->ratio:F

    .line 31
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    div-float v0, p1, p2

    iput v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/RatioResolutionStrategy;->ratio:F

    .line 35
    return-void
.end method


# virtual methods
.method public calcMeasures(II)Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy$MeasuredDimension;
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 40
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 41
    .local v4, "specWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 43
    .local v3, "specHeight":I
    iget v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/RatioResolutionStrategy;->ratio:F

    .line 44
    .local v0, "desiredRatio":F
    int-to-float v6, v4

    int-to-float v7, v3

    div-float v2, v6, v7

    .line 48
    .local v2, "realRatio":F
    cmpg-float v6, v2, v0

    if-gez v6, :cond_0

    .line 49
    move v5, v4

    .line 50
    .local v5, "width":I
    int-to-float v6, v5

    div-float/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 56
    .local v1, "height":I
    :goto_0
    new-instance v6, Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy$MeasuredDimension;

    invoke-direct {v6, v5, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy$MeasuredDimension;-><init>(II)V

    return-object v6

    .line 52
    .end local v1    # "height":I
    .end local v5    # "width":I
    :cond_0
    move v1, v3

    .line 53
    .restart local v1    # "height":I
    int-to-float v6, v1

    mul-float/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    .restart local v5    # "width":I
    goto :goto_0
.end method
