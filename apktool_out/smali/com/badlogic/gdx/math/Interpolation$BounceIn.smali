.class public Lcom/badlogic/gdx/math/Interpolation$BounceIn;
.super Lcom/badlogic/gdx/math/Interpolation$BounceOut;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BounceIn"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "bounces"    # I

    .prologue
    .line 341
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/math/Interpolation$BounceOut;-><init>(I)V

    .line 342
    return-void
.end method

.method public constructor <init>([F[F)V
    .locals 0
    .param p1, "widths"    # [F
    .param p2, "heights"    # [F

    .prologue
    .line 337
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/math/Interpolation$BounceOut;-><init>([F[F)V

    .line 338
    return-void
.end method


# virtual methods
.method public apply(F)F
    .locals 2
    .param p1, "a"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 345
    sub-float v0, v1, p1

    invoke-super {p0, v0}, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->apply(F)F

    move-result v0

    sub-float v0, v1, v0

    return v0
.end method
