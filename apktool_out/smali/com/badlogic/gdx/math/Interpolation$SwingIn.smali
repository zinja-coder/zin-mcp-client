.class public Lcom/badlogic/gdx/math/Interpolation$SwingIn;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SwingIn"
.end annotation


# instance fields
.field private final scale:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 385
    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    .line 386
    iput p1, p0, Lcom/badlogic/gdx/math/Interpolation$SwingIn;->scale:F

    .line 387
    return-void
.end method


# virtual methods
.method public apply(F)F
    .locals 3
    .param p1, "a"    # F

    .prologue
    .line 390
    mul-float v0, p1, p1

    iget v1, p0, Lcom/badlogic/gdx/math/Interpolation$SwingIn;->scale:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/badlogic/gdx/math/Interpolation$SwingIn;->scale:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method
