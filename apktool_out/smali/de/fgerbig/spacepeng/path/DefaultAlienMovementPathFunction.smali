.class public Lde/fgerbig/spacepeng/path/DefaultAlienMovementPathFunction;
.super Ljava/lang/Object;
.source "DefaultAlienMovementPathFunction.java"

# interfaces
.implements Lde/fgerbig/spacepeng/path/PathFunction;


# static fields
.field public static final id:Ljava/lang/String; = "defaultMovement"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getXY(F)Lcom/badlogic/gdx/math/Vector2;
    .locals 4
    .param p1, "rad"    # F

    .prologue
    .line 28
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v2

    const/high16 v3, 0x42480000    # 50.0f

    mul-float v0, v2, v3

    .line 29
    .local v0, "x":F
    const/4 v1, 0x0

    .line 31
    .local v1, "y":F
    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v2, v0, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    return-object v2
.end method
