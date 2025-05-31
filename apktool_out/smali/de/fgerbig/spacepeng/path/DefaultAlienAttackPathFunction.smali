.class public Lde/fgerbig/spacepeng/path/DefaultAlienAttackPathFunction;
.super Ljava/lang/Object;
.source "DefaultAlienAttackPathFunction.java"

# interfaces
.implements Lde/fgerbig/spacepeng/path/PathFunction;


# static fields
.field public static final id:Ljava/lang/String; = "defaultAttack"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getXY(F)Lcom/badlogic/gdx/math/Vector2;
    .locals 5
    .param p1, "rad"    # F

    .prologue
    const/high16 v4, 0x40400000    # 3.0f

    .line 29
    mul-float v2, v4, p1

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v2

    const/high16 v3, 0x44480000    # 800.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x41000000    # 8.0f

    div-float v0, v2, v3

    .line 30
    .local v0, "x":F
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v2

    const/high16 v3, 0x43f00000    # 480.0f

    mul-float/2addr v2, v3

    div-float/2addr v2, v4

    const/high16 v3, 0x42f00000    # 120.0f

    sub-float v1, v2, v3

    .line 32
    .local v1, "y":F
    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v2, v0, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    return-object v2
.end method
