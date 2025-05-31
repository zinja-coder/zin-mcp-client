.class Lcom/badlogic/gdx/math/MathUtils$Atan2;
.super Ljava/lang/Object;
.source "MathUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/MathUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Atan2"
.end annotation


# static fields
.field static final table:[F


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 91
    const/16 v4, 0x4000

    new-array v4, v4, [F

    sput-object v4, Lcom/badlogic/gdx/math/MathUtils$Atan2;->table:[F

    .line 93
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v4, Lcom/badlogic/gdx/math/MathUtils;->ATAN2_DIM:I

    if-ge v0, v4, :cond_1

    .line 94
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    sget v4, Lcom/badlogic/gdx/math/MathUtils;->ATAN2_DIM:I

    if-ge v1, v4, :cond_0

    .line 95
    int-to-float v4, v0

    sget v5, Lcom/badlogic/gdx/math/MathUtils;->ATAN2_DIM:I

    int-to-float v5, v5

    div-float v2, v4, v5

    .line 96
    .local v2, "x0":F
    int-to-float v4, v1

    sget v5, Lcom/badlogic/gdx/math/MathUtils;->ATAN2_DIM:I

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 97
    .local v3, "y0":F
    sget-object v4, Lcom/badlogic/gdx/math/MathUtils$Atan2;->table:[F

    sget v5, Lcom/badlogic/gdx/math/MathUtils;->ATAN2_DIM:I

    mul-int/2addr v5, v1

    add-int/2addr v5, v0

    float-to-double v6, v3

    float-to-double v8, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v6, v6

    aput v6, v4, v5

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 93
    .end local v2    # "x0":F
    .end local v3    # "y0":F
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    .end local v1    # "j":I
    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
