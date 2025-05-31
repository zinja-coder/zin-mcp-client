.class public Lcom/badlogic/gdx/math/Matrix4;
.super Ljava/lang/Object;
.source "Matrix4.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final M00:I = 0x0

.field public static final M01:I = 0x4

.field public static final M02:I = 0x8

.field public static final M03:I = 0xc

.field public static final M10:I = 0x1

.field public static final M11:I = 0x5

.field public static final M12:I = 0x9

.field public static final M13:I = 0xd

.field public static final M20:I = 0x2

.field public static final M21:I = 0x6

.field public static final M22:I = 0xa

.field public static final M23:I = 0xe

.field public static final M30:I = 0x3

.field public static final M31:I = 0x7

.field public static final M32:I = 0xb

.field public static final M33:I = 0xf

.field static final l_vex:Lcom/badlogic/gdx/math/Vector3;

.field static final l_vey:Lcom/badlogic/gdx/math/Vector3;

.field static final l_vez:Lcom/badlogic/gdx/math/Vector3;

.field static quat:Lcom/badlogic/gdx/math/Quaternion; = null

.field static quat2:Lcom/badlogic/gdx/math/Quaternion; = null

.field static final right:Lcom/badlogic/gdx/math/Vector3;

.field private static final serialVersionUID:J = -0x25b70d0e1a139be1L

.field public static final tmp:[F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final tmpForward:Lcom/badlogic/gdx/math/Vector3;

.field static final tmpMat:Lcom/badlogic/gdx/math/Matrix4;

.field static final tmpUp:Lcom/badlogic/gdx/math/Vector3;

.field static final tmpVec:Lcom/badlogic/gdx/math/Vector3;


# instance fields
.field public final val:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    .line 702
    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Quaternion;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    .line 703
    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Quaternion;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat2:Lcom/badlogic/gdx/math/Quaternion;

    .line 817
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->l_vez:Lcom/badlogic/gdx/math/Vector3;

    .line 818
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->l_vex:Lcom/badlogic/gdx/math/Vector3;

    .line 819
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->l_vey:Lcom/badlogic/gdx/math/Vector3;

    .line 846
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    .line 847
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpMat:Lcom/badlogic/gdx/math/Matrix4;

    .line 863
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->right:Lcom/badlogic/gdx/math/Vector3;

    .line 864
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpForward:Lcom/badlogic/gdx/math/Vector3;

    .line 865
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpUp:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    .line 79
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 80
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    aput v2, v0, v1

    .line 81
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    aput v2, v0, v1

    .line 82
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xf

    aput v2, v0, v1

    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    .line 89
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 90
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Quaternion;)V
    .locals 1
    .param p1, "quaternion"    # Lcom/badlogic/gdx/math/Quaternion;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    .line 102
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    .line 103
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Quaternion;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 1
    .param p1, "position"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "rotation"    # Lcom/badlogic/gdx/math/Quaternion;
    .param p3, "scale"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    .line 110
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Quaternion;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    .line 111
    return-void
.end method

.method public constructor <init>([F)V
    .locals 1
    .param p1, "values"    # [F

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    .line 96
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set([F)Lcom/badlogic/gdx/math/Matrix4;

    .line 97
    return-void
.end method

.method public static native det([F)F
.end method

.method public static native inv([F)Z
.end method

.method public static native mul([F[F)V
.end method

.method public static native mulVec([F[F)V
.end method

.method public static native mulVec([F[FIII)V
.end method

.method public static native prj([F[F)V
.end method

.method public static native prj([F[FIII)V
.end method

.method public static native rot([F[F)V
.end method

.method public static native rot([F[FIII)V
.end method


# virtual methods
.method public avg(Lcom/badlogic/gdx/math/Matrix4;F)Lcom/badlogic/gdx/math/Matrix4;
    .locals 4
    .param p1, "other"    # Lcom/badlogic/gdx/math/Matrix4;
    .param p2, "w"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 898
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->getScale(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 899
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpForward:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Matrix4;->getScale(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 901
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->getRotation(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 902
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat2:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Matrix4;->getRotation(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 904
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpUp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->getTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 905
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->right:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Matrix4;->getTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 907
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->tmpForward:Lcom/badlogic/gdx/math/Vector3;

    sub-float v2, v3, p2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->setToScaling(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    .line 908
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->quat2:Lcom/badlogic/gdx/math/Quaternion;

    sub-float v2, v3, p2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Quaternion;->slerp(Lcom/badlogic/gdx/math/Quaternion;F)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    .line 909
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpUp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->right:Lcom/badlogic/gdx/math/Vector3;

    sub-float v2, v3, p2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->setTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    .line 911
    return-object p0
.end method

.method public avg([Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 6
    .param p1, "t"    # [Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    const/4 v5, 0x0

    .line 919
    const/high16 v2, 0x3f800000    # 1.0f

    array-length v3, p1

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 921
    .local v1, "w":F
    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    aget-object v3, p1, v5

    sget-object v4, Lcom/badlogic/gdx/math/Matrix4;->tmpUp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Matrix4;->getScale(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 922
    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    aget-object v3, p1, v5

    sget-object v4, Lcom/badlogic/gdx/math/Matrix4;->quat2:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Matrix4;->getRotation(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/math/Quaternion;->exp(F)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 923
    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->tmpForward:Lcom/badlogic/gdx/math/Vector3;

    aget-object v3, p1, v5

    sget-object v4, Lcom/badlogic/gdx/math/Matrix4;->tmpUp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Matrix4;->getTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 925
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 926
    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    aget-object v3, p1, v0

    sget-object v4, Lcom/badlogic/gdx/math/Matrix4;->tmpUp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Matrix4;->getScale(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 927
    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    aget-object v3, p1, v0

    sget-object v4, Lcom/badlogic/gdx/math/Matrix4;->quat2:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Matrix4;->getRotation(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/math/Quaternion;->exp(F)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Quaternion;->mul(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 928
    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->tmpForward:Lcom/badlogic/gdx/math/Vector3;

    aget-object v3, p1, v0

    sget-object v4, Lcom/badlogic/gdx/math/Matrix4;->tmpUp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Matrix4;->getTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 925
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 930
    :cond_0
    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Quaternion;->nor()Lcom/badlogic/gdx/math/Quaternion;

    .line 932
    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/math/Matrix4;->setToScaling(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    .line 933
    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    .line 934
    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->tmpForward:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/math/Matrix4;->setTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    .line 936
    return-object p0
.end method

.method public avg([Lcom/badlogic/gdx/math/Matrix4;[F)Lcom/badlogic/gdx/math/Matrix4;
    .locals 5
    .param p1, "t"    # [Lcom/badlogic/gdx/math/Matrix4;
    .param p2, "w"    # [F

    .prologue
    const/4 v4, 0x0

    .line 946
    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    aget-object v2, p1, v4

    sget-object v3, Lcom/badlogic/gdx/math/Matrix4;->tmpUp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->getScale(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    aget v3, p2, v4

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 947
    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    aget-object v2, p1, v4

    sget-object v3, Lcom/badlogic/gdx/math/Matrix4;->quat2:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->getRotation(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v2

    aget v3, p2, v4

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Quaternion;->exp(F)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 948
    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->tmpForward:Lcom/badlogic/gdx/math/Vector3;

    aget-object v2, p1, v4

    sget-object v3, Lcom/badlogic/gdx/math/Matrix4;->tmpUp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->getTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    aget v3, p2, v4

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 950
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 951
    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    aget-object v2, p1, v0

    sget-object v3, Lcom/badlogic/gdx/math/Matrix4;->tmpUp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->getScale(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    aget v3, p2, v0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 952
    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    aget-object v2, p1, v0

    sget-object v3, Lcom/badlogic/gdx/math/Matrix4;->quat2:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->getRotation(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v2

    aget v3, p2, v0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Quaternion;->exp(F)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Quaternion;->mul(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 953
    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->tmpForward:Lcom/badlogic/gdx/math/Vector3;

    aget-object v2, p1, v0

    sget-object v3, Lcom/badlogic/gdx/math/Matrix4;->tmpUp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->getTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    aget v3, p2, v0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 950
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 955
    :cond_0
    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Quaternion;->nor()Lcom/badlogic/gdx/math/Quaternion;

    .line 957
    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/math/Matrix4;->setToScaling(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    .line 958
    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    .line 959
    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->tmpForward:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/math/Matrix4;->setTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    .line 961
    return-object p0
.end method

.method public cpy()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    .prologue
    .line 279
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/math/Matrix4;-><init>(Lcom/badlogic/gdx/math/Matrix4;)V

    return-object v0
.end method

.method public det()F
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 453
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v0, v0, v7

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0x9

    aget v1, v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0xc

    aget v1, v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v6

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x9

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xc

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v7

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xa

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xc

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v5

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xa

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xc

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v6

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xb

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xc

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v5

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xb

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xc

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v7

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v6

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v7

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v8

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xa

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xa

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v6

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v8

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xb

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xb

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v7

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xe

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v5

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xe

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v7

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v8

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x9

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xe

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x9

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xe

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v5

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v8

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xb

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xe

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xb

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xe

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v6

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xf

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v5

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xf

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v6

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v8

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x9

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xf

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x9

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xf

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v5

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v8

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xa

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xf

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xa

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xf

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public det3x3()F
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 466
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v0, v0, v4

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v8

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0xa

    aget v1, v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v7

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x9

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v6

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0x8

    aget v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v5

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x9

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v7

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v5

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xa

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0x8

    aget v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v8

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v6

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public extract4x3Matrix([F)V
    .locals 6
    .param p1, "dst"    # [F

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1538
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v0, v0, v1

    aput v0, p1, v1

    .line 1539
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v0, v0, v2

    aput v0, p1, v2

    .line 1540
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v0, v0, v3

    aput v0, p1, v3

    .line 1541
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v4

    aput v1, p1, v0

    .line 1542
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v0, v0, v5

    aput v0, p1, v4

    .line 1543
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x6

    aget v0, v0, v1

    aput v0, p1, v5

    .line 1544
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0x8

    aget v1, v1, v2

    aput v1, p1, v0

    .line 1545
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0x9

    aget v1, v1, v2

    aput v1, p1, v0

    .line 1546
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0xa

    aget v1, v1, v2

    aput v1, p1, v0

    .line 1547
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0xc

    aget v1, v1, v2

    aput v1, p1, v0

    .line 1548
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0xd

    aget v1, v1, v2

    aput v1, p1, v0

    .line 1549
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0xe

    aget v1, v1, v2

    aput v1, p1, v0

    .line 1550
    return-void
.end method

.method public getRotation(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;
    .locals 1
    .param p1, "rotation"    # Lcom/badlogic/gdx/math/Quaternion;

    .prologue
    .line 1097
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/math/Quaternion;->setFromMatrix(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public getRotation(Lcom/badlogic/gdx/math/Quaternion;Z)Lcom/badlogic/gdx/math/Quaternion;
    .locals 1
    .param p1, "rotation"    # Lcom/badlogic/gdx/math/Quaternion;
    .param p2, "normalizeAxes"    # Z

    .prologue
    .line 1090
    invoke-virtual {p1, p2, p0}, Lcom/badlogic/gdx/math/Quaternion;->setFromMatrix(ZLcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public getScale(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .param p1, "scale"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 1136
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->getScaleX()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->getScaleY()F

    move-result v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->getScaleZ()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public getScaleX()F
    .locals 2

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x4

    aget v0, v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x8

    aget v0, v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->getScaleXSquared()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0
.end method

.method public getScaleXSquared()F
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 1102
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v0, v0, v2

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v3

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v4

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getScaleY()F
    .locals 2

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x9

    aget v0, v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->getScaleYSquared()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0
.end method

.method public getScaleYSquared()F
    .locals 5

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 1107
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v0, v0, v2

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v3

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v4

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getScaleZ()F
    .locals 2

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x6

    aget v0, v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->getScaleZSquared()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0
.end method

.method public getScaleZSquared()F
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x6

    const/4 v2, 0x2

    .line 1112
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v0, v0, v2

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v3

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v4

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 2
    .param p1, "position"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    aget v0, v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 1080
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    aget v0, v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 1081
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    aget v0, v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 1082
    return-object p1
.end method

.method public getValues()[F
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    return-object v0
.end method

.method public idt()Lcom/badlogic/gdx/math/Matrix4;
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 365
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aput v3, v0, v1

    .line 366
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x4

    aput v2, v0, v1

    .line 367
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x8

    aput v2, v0, v1

    .line 368
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    aput v2, v0, v1

    .line 369
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 370
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    aput v3, v0, v1

    .line 371
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x9

    aput v2, v0, v1

    .line 372
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    aput v2, v0, v1

    .line 373
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 374
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x6

    aput v2, v0, v1

    .line 375
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    aput v3, v0, v1

    .line 376
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    aput v2, v0, v1

    .line 377
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 378
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 379
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xb

    aput v2, v0, v1

    .line 380
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xf

    aput v3, v0, v1

    .line 381
    return-object p0
.end method

.method public inv()Lcom/badlogic/gdx/math/Matrix4;
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 389
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v11

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x6

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0x9

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xc

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v10

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x7

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x9

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xc

    aget v4, v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v11

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xa

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xc

    aget v4, v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v9

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x7

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xa

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xc

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v10

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xb

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xc

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v9

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x6

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xb

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xc

    aget v4, v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v11

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x6

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xd

    aget v4, v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v10

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x7

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xd

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v11

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v12

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xa

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xd

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v8

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x7

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xa

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xd

    aget v4, v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v10

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v12

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xb

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xd

    aget v4, v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v8

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x6

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xb

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xd

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v11

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xe

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v9

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x7

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xe

    aget v4, v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v11

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v12

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x9

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xe

    aget v4, v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v8

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x7

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x9

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xe

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v9

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v12

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xb

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xe

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v8

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xb

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xe

    aget v4, v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v10

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xf

    aget v4, v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v9

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x6

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xf

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v10

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v12

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x9

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xf

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v8

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x6

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x9

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xf

    aget v4, v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v9

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v12

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xa

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xf

    aget v4, v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v8

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xa

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xf

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float v1, v2, v3

    .line 398
    .local v1, "l_det":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "non-invertible matrix"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 399
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    div-float v0, v2, v1

    .line 400
    .local v0, "inv_det":F
    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0x9

    aget v3, v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xe

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x7

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xd

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xa

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x7

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xd

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x6

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xb

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xe

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xb

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x9

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x6

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xf

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xa

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xf

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v2, v8

    .line 402
    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xc

    aget v3, v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xa

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x7

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xe

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x7

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xc

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x6

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xb

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v12

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xe

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xb

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x6

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xf

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v12

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xa

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xf

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    aput v3, v2, v12

    .line 404
    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v3, 0x8

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xd

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x7

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xc

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0x9

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x7

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xc

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xb

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v12

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xd

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xb

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0x8

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xf

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v12

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0x9

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xf

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, v2, v3

    .line 406
    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v3, 0xc

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xc

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0x9

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x6

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0x8

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xd

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x6

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xc

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xa

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v12

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xd

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xa

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0x8

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xe

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v12

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0x9

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xe

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aput v4, v2, v3

    .line 408
    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xd

    aget v3, v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xa

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v11

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x9

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xe

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v11

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xd

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v10

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xb

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v9

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xe

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xb

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x9

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v10

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xf

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v9

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xa

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xf

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    aput v3, v2, v9

    .line 410
    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xe

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v11

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xc

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xa

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v11

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xc

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v10

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xb

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v8

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xe

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xb

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0x8

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v10

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xf

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v8

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xa

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xf

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, v2, v3

    .line 412
    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v3, 0x9

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xc

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0x9

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v11

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0x8

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xd

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v11

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xc

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v9

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xb

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v8

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xd

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xb

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0x8

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v9

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xf

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v8

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0x9

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xf

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aput v4, v2, v3

    .line 414
    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v3, 0xd

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xd

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v10

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xc

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0x9

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v10

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xc

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v9

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xa

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v8

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xd

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xa

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0x8

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v9

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xe

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v8

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0x9

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xe

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, v2, v3

    .line 416
    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xe

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v11

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xd

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x6

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v11

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xd

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v10

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x7

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v9

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xe

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x7

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v10

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xf

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v9

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x6

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xf

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v2, v10

    .line 418
    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xc

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x6

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v11

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v12

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xe

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v11

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xc

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v10

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x7

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v8

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xe

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x7

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v12

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v10

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xf

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v8

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x6

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xf

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aput v4, v2, v3

    .line 420
    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v3, 0xa

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v12

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xd

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v11

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xc

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v11

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xc

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v9

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x7

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v8

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xd

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x7

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v12

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v9

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xf

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v8

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xf

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, v2, v3

    .line 422
    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v3, 0xe

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xc

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x5

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v10

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v12

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xd

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v10

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xc

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v9

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x6

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v8

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xd

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x6

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v12

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v9

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xe

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v8

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xe

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aput v4, v2, v3

    .line 424
    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0x9

    aget v3, v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x6

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v11

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xa

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v11

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x9

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v10

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x7

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v9

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xa

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x7

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v10

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xb

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v9

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x6

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xb

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    aput v3, v2, v11

    .line 426
    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v12

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xa

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v11

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0x8

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x6

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v11

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0x8

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v10

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x7

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v8

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xa

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x7

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v12

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v10

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xb

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v8

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x6

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xb

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, v2, v3

    .line 428
    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v3, 0xb

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x5

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v11

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v12

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0x9

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v11

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0x8

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v9

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x7

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v8

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0x9

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x7

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v12

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v9

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xb

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v8

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xb

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aput v4, v2, v3

    .line 430
    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v3, 0xf

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v12

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0x9

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v10

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0x8

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v10

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0x8

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v9

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x6

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v8

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0x9

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x6

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v12

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v6, v6, v9

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xa

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v8

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xa

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, v2, v3

    .line 432
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    sget-object v3, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    aget v3, v3, v8

    mul-float/2addr v3, v0

    aput v3, v2, v8

    .line 433
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    sget-object v3, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    aget v3, v3, v12

    mul-float/2addr v3, v0

    aput v3, v2, v12

    .line 434
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x8

    sget-object v4, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    mul-float/2addr v4, v0

    aput v4, v2, v3

    .line 435
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xc

    sget-object v4, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v5, 0xc

    aget v4, v4, v5

    mul-float/2addr v4, v0

    aput v4, v2, v3

    .line 436
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    sget-object v3, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    aget v3, v3, v9

    mul-float/2addr v3, v0

    aput v3, v2, v9

    .line 437
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x5

    sget-object v4, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    mul-float/2addr v4, v0

    aput v4, v2, v3

    .line 438
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x9

    sget-object v4, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v5, 0x9

    aget v4, v4, v5

    mul-float/2addr v4, v0

    aput v4, v2, v3

    .line 439
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xd

    sget-object v4, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v5, 0xd

    aget v4, v4, v5

    mul-float/2addr v4, v0

    aput v4, v2, v3

    .line 440
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    sget-object v3, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    aget v3, v3, v10

    mul-float/2addr v3, v0

    aput v3, v2, v10

    .line 441
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x6

    sget-object v4, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v5, 0x6

    aget v4, v4, v5

    mul-float/2addr v4, v0

    aput v4, v2, v3

    .line 442
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xa

    sget-object v4, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v5, 0xa

    aget v4, v4, v5

    mul-float/2addr v4, v0

    aput v4, v2, v3

    .line 443
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xe

    sget-object v4, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v5, 0xe

    aget v4, v4, v5

    mul-float/2addr v4, v0

    aput v4, v2, v3

    .line 444
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    sget-object v3, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    aget v3, v3, v11

    mul-float/2addr v3, v0

    aput v3, v2, v11

    .line 445
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x7

    sget-object v4, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v5, 0x7

    aget v4, v4, v5

    mul-float/2addr v4, v0

    aput v4, v2, v3

    .line 446
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xb

    sget-object v4, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v5, 0xb

    aget v4, v4, v5

    mul-float/2addr v4, v0

    aput v4, v2, v3

    .line 447
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xf

    sget-object v4, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v5, 0xf

    aget v4, v4, v5

    mul-float/2addr v4, v0

    aput v4, v2, v3

    .line 448
    return-object p0
.end method

.method public lerp(Lcom/badlogic/gdx/math/Matrix4;F)Lcom/badlogic/gdx/math/Matrix4;
    .locals 4
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;
    .param p2, "alpha"    # F

    .prologue
    .line 887
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 888
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p2

    mul-float/2addr v2, v3

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v0

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 887
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 889
    :cond_0
    return-object p0
.end method

.method public mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 2
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->mul([F[F)V

    .line 321
    return-object p0
.end method

.method public mulLeft(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 2
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 333
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpMat:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 334
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpMat:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->mul([F[F)V

    .line 335
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpMat:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public rotate(FFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1
    .param p1, "axisX"    # F
    .param p2, "axisY"    # F
    .param p3, "axisZ"    # F
    .param p4, "degrees"    # F

    .prologue
    .line 1470
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-nez v0, :cond_0

    .line 1472
    .end local p0    # "this":Lcom/badlogic/gdx/math/Matrix4;
    :goto_0
    return-object p0

    .line 1471
    .restart local p0    # "this":Lcom/badlogic/gdx/math/Matrix4;
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxis(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    .line 1472
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p0

    goto :goto_0
.end method

.method public rotate(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 2
    .param p1, "rotation"    # Lcom/badlogic/gdx/math/Quaternion;

    .prologue
    .line 1494
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Quaternion;->toMatrix([F)V

    .line 1495
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->mul([F[F)V

    .line 1496
    return-object p0
.end method

.method public rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1
    .param p1, "axis"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "degrees"    # F

    .prologue
    .line 1445
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 1447
    .end local p0    # "this":Lcom/badlogic/gdx/math/Matrix4;
    :goto_0
    return-object p0

    .line 1446
    .restart local p0    # "this":Lcom/badlogic/gdx/math/Matrix4;
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;

    .line 1447
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p0

    goto :goto_0
.end method

.method public rotate(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1
    .param p1, "v1"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "v2"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 1504
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Quaternion;->setFromCross(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public rotateRad(FFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1
    .param p1, "axisX"    # F
    .param p2, "axisY"    # F
    .param p3, "axisZ"    # F
    .param p4, "radians"    # F

    .prologue
    .line 1483
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-nez v0, :cond_0

    .line 1485
    .end local p0    # "this":Lcom/badlogic/gdx/math/Matrix4;
    :goto_0
    return-object p0

    .line 1484
    .restart local p0    # "this":Lcom/badlogic/gdx/math/Matrix4;
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxisRad(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    .line 1485
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p0

    goto :goto_0
.end method

.method public rotateRad(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1
    .param p1, "axis"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "radians"    # F

    .prologue
    .line 1457
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 1459
    .end local p0    # "this":Lcom/badlogic/gdx/math/Matrix4;
    :goto_0
    return-object p0

    .line 1458
    .restart local p0    # "this":Lcom/badlogic/gdx/math/Matrix4;
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxisRad(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;

    .line 1459
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p0

    goto :goto_0
.end method

.method public scale(FFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "scaleZ"    # F

    .prologue
    const/4 v2, 0x0

    .line 1514
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1515
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v1, 0x4

    aput v2, v0, v1

    .line 1516
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0x8

    aput v2, v0, v1

    .line 1517
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xc

    aput v2, v0, v1

    .line 1518
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 1519
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v1, 0x5

    aput p2, v0, v1

    .line 1520
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0x9

    aput v2, v0, v1

    .line 1521
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xd

    aput v2, v0, v1

    .line 1522
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 1523
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v1, 0x6

    aput v2, v0, v1

    .line 1524
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xa

    aput p3, v0, v1

    .line 1525
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xe

    aput v2, v0, v1

    .line 1526
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 1527
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 1528
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xb

    aput v2, v0, v1

    .line 1529
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xf

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 1531
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->mul([F[F)V

    .line 1532
    return-object p0
.end method

.method public scl(F)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3
    .param p1, "scale"    # F

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    .line 1073
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    aget v2, v0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    .line 1074
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    aget v2, v0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    .line 1075
    return-object p0
.end method

.method public scl(FFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    .line 1066
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    aget v2, v0, v1

    mul-float/2addr v2, p2

    aput v2, v0, v1

    .line 1067
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    aget v2, v0, v1

    mul-float/2addr v2, p3

    aput v2, v0, v1

    .line 1068
    return-object p0
.end method

.method public scl(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 4
    .param p1, "scale"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 1059
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 1060
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 1061
    return-object p0
.end method

.method public set(FFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 8
    .param p1, "quaternionX"    # F
    .param p2, "quaternionY"    # F
    .param p3, "quaternionZ"    # F
    .param p4, "quaternionW"    # F

    .prologue
    const/4 v1, 0x0

    .line 148
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/math/Matrix4;->set(FFFFFFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public set(FFFFFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 17
    .param p1, "translationX"    # F
    .param p2, "translationY"    # F
    .param p3, "translationZ"    # F
    .param p4, "quaternionX"    # F
    .param p5, "quaternionY"    # F
    .param p6, "quaternionZ"    # F
    .param p7, "quaternionW"    # F

    .prologue
    .line 171
    const/high16 v13, 0x40000000    # 2.0f

    mul-float v4, p4, v13

    .local v4, "xs":F
    const/high16 v13, 0x40000000    # 2.0f

    mul-float v8, p5, v13

    .local v8, "ys":F
    const/high16 v13, 0x40000000    # 2.0f

    mul-float v11, p6, v13

    .line 172
    .local v11, "zs":F
    mul-float v1, p7, v4

    .local v1, "wx":F
    mul-float v2, p7, v8

    .local v2, "wy":F
    mul-float v3, p7, v11

    .line 173
    .local v3, "wz":F
    mul-float v5, p4, v4

    .local v5, "xx":F
    mul-float v6, p4, v8

    .local v6, "xy":F
    mul-float v7, p4, v11

    .line 174
    .local v7, "xz":F
    mul-float v9, p5, v8

    .local v9, "yy":F
    mul-float v10, p5, v11

    .local v10, "yz":F
    mul-float v12, p6, v11

    .line 176
    .local v12, "zz":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    add-float v16, v9, v12

    sub-float v15, v15, v16

    aput v15, v13, v14

    .line 177
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v14, 0x4

    sub-float v15, v6, v3

    aput v15, v13, v14

    .line 178
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v14, 0x8

    add-float v15, v7, v2

    aput v15, v13, v14

    .line 179
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v14, 0xc

    aput p1, v13, v14

    .line 181
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v14, 0x1

    add-float v15, v6, v3

    aput v15, v13, v14

    .line 182
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v14, 0x5

    const/high16 v15, 0x3f800000    # 1.0f

    add-float v16, v5, v12

    sub-float v15, v15, v16

    aput v15, v13, v14

    .line 183
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v14, 0x9

    sub-float v15, v10, v1

    aput v15, v13, v14

    .line 184
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v14, 0xd

    aput p2, v13, v14

    .line 186
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v14, 0x2

    sub-float v15, v7, v2

    aput v15, v13, v14

    .line 187
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v14, 0x6

    add-float v15, v10, v1

    aput v15, v13, v14

    .line 188
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v14, 0xa

    const/high16 v15, 0x3f800000    # 1.0f

    add-float v16, v5, v9

    sub-float v15, v15, v16

    aput v15, v13, v14

    .line 189
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v14, 0xe

    aput p3, v13, v14

    .line 191
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v14, 0x3

    const/4 v15, 0x0

    aput v15, v13, v14

    .line 192
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v14, 0x7

    const/4 v15, 0x0

    aput v15, v13, v14

    .line 193
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v14, 0xb

    const/4 v15, 0x0

    aput v15, v13, v14

    .line 194
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v14, 0xf

    const/high16 v15, 0x3f800000    # 1.0f

    aput v15, v13, v14

    .line 195
    return-object p0
.end method

.method public set(FFFFFFFFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 17
    .param p1, "translationX"    # F
    .param p2, "translationY"    # F
    .param p3, "translationZ"    # F
    .param p4, "quaternionX"    # F
    .param p5, "quaternionY"    # F
    .param p6, "quaternionZ"    # F
    .param p7, "quaternionW"    # F
    .param p8, "scaleX"    # F
    .param p9, "scaleY"    # F
    .param p10, "scaleZ"    # F

    .prologue
    .line 223
    const/high16 v13, 0x40000000    # 2.0f

    mul-float v4, p4, v13

    .local v4, "xs":F
    const/high16 v13, 0x40000000    # 2.0f

    mul-float v8, p5, v13

    .local v8, "ys":F
    const/high16 v13, 0x40000000    # 2.0f

    mul-float v11, p6, v13

    .line 224
    .local v11, "zs":F
    mul-float v1, p7, v4

    .local v1, "wx":F
    mul-float v2, p7, v8

    .local v2, "wy":F
    mul-float v3, p7, v11

    .line 225
    .local v3, "wz":F
    mul-float v5, p4, v4

    .local v5, "xx":F
    mul-float v6, p4, v8

    .local v6, "xy":F
    mul-float v7, p4, v11

    .line 226
    .local v7, "xz":F
    mul-float v9, p5, v8

    .local v9, "yy":F
    mul-float v10, p5, v11

    .local v10, "yz":F
    mul-float v12, p6, v11

    .line 228
    .local v12, "zz":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    add-float v16, v9, v12

    sub-float v15, v15, v16

    mul-float v15, v15, p8

    aput v15, v13, v14

    .line 229
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v14, 0x4

    sub-float v15, v6, v3

    mul-float v15, v15, p9

    aput v15, v13, v14

    .line 230
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v14, 0x8

    add-float v15, v7, v2

    mul-float v15, v15, p10

    aput v15, v13, v14

    .line 231
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v14, 0xc

    aput p1, v13, v14

    .line 233
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v14, 0x1

    add-float v15, v6, v3

    mul-float v15, v15, p8

    aput v15, v13, v14

    .line 234
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v14, 0x5

    const/high16 v15, 0x3f800000    # 1.0f

    add-float v16, v5, v12

    sub-float v15, v15, v16

    mul-float v15, v15, p9

    aput v15, v13, v14

    .line 235
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v14, 0x9

    sub-float v15, v10, v1

    mul-float v15, v15, p10

    aput v15, v13, v14

    .line 236
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v14, 0xd

    aput p2, v13, v14

    .line 238
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v14, 0x2

    sub-float v15, v7, v2

    mul-float v15, v15, p8

    aput v15, v13, v14

    .line 239
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v14, 0x6

    add-float v15, v10, v1

    mul-float v15, v15, p9

    aput v15, v13, v14

    .line 240
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v14, 0xa

    const/high16 v15, 0x3f800000    # 1.0f

    add-float v16, v5, v9

    sub-float v15, v15, v16

    mul-float v15, v15, p10

    aput v15, v13, v14

    .line 241
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v14, 0xe

    aput p3, v13, v14

    .line 243
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v14, 0x3

    const/4 v15, 0x0

    aput v15, v13, v14

    .line 244
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v14, 0x7

    const/4 v15, 0x0

    aput v15, v13, v14

    .line 245
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v14, 0xb

    const/4 v15, 0x0

    aput v15, v13, v14

    .line 246
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v14, 0xf

    const/high16 v15, 0x3f800000    # 1.0f

    aput v15, v13, v14

    .line 247
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Affine2;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 5
    .param p1, "affine"    # Lcom/badlogic/gdx/math/Affine2;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 997
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    iget v2, p1, Lcom/badlogic/gdx/math/Affine2;->m00:F

    aput v2, v0, v1

    .line 998
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x1

    iget v2, p1, Lcom/badlogic/gdx/math/Affine2;->m10:F

    aput v2, v0, v1

    .line 999
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x2

    aput v3, v0, v1

    .line 1000
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x3

    aput v3, v0, v1

    .line 1001
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x4

    iget v2, p1, Lcom/badlogic/gdx/math/Affine2;->m01:F

    aput v2, v0, v1

    .line 1002
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    iget v2, p1, Lcom/badlogic/gdx/math/Affine2;->m11:F

    aput v2, v0, v1

    .line 1003
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x6

    aput v3, v0, v1

    .line 1004
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x7

    aput v3, v0, v1

    .line 1005
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x8

    aput v3, v0, v1

    .line 1006
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x9

    aput v3, v0, v1

    .line 1007
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    aput v4, v0, v1

    .line 1008
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xb

    aput v3, v0, v1

    .line 1009
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    iget v2, p1, Lcom/badlogic/gdx/math/Affine2;->m02:F

    aput v2, v0, v1

    .line 1010
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    iget v2, p1, Lcom/badlogic/gdx/math/Affine2;->m12:F

    aput v2, v0, v1

    .line 1011
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    aput v3, v0, v1

    .line 1012
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xf

    aput v4, v0, v1

    .line 1013
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 7
    .param p1, "mat"    # Lcom/badlogic/gdx/math/Matrix3;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 967
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v1, v1, v2

    aput v1, v0, v2

    .line 968
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v1, v1, v3

    aput v1, v0, v3

    .line 969
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v1, v1, v5

    aput v1, v0, v5

    .line 970
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aput v4, v0, v6

    .line 971
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v2, v2, v6

    aput v2, v0, v1

    .line 972
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x4

    aget v2, v2, v3

    aput v2, v0, v1

    .line 973
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    aput v2, v0, v1

    .line 974
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x7

    aput v4, v0, v1

    .line 975
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x8

    aput v4, v0, v1

    .line 976
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x9

    aput v4, v0, v1

    .line 977
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 978
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xb

    aput v4, v0, v1

    .line 979
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    aput v2, v0, v1

    .line 980
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    aput v2, v0, v1

    .line 981
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    aput v4, v0, v1

    .line 982
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xf

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    aput v2, v0, v1

    .line 983
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 118
    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->set([F)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 4
    .param p1, "quaternion"    # Lcom/badlogic/gdx/math/Quaternion;

    .prologue
    .line 137
    iget v0, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v3, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->set(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 8
    .param p1, "position"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "orientation"    # Lcom/badlogic/gdx/math/Quaternion;

    .prologue
    .line 156
    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v4, p2, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v5, p2, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v6, p2, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v7, p2, Lcom/badlogic/gdx/math/Quaternion;->w:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/math/Matrix4;->set(FFFFFFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Quaternion;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 11
    .param p1, "position"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "orientation"    # Lcom/badlogic/gdx/math/Quaternion;
    .param p3, "scale"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 204
    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v4, p2, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v5, p2, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v6, p2, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v7, p2, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v8, p3, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v9, p3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v10, p3, Lcom/badlogic/gdx/math/Vector3;->z:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/math/Matrix4;->set(FFFFFFFFFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 4
    .param p1, "xAxis"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "yAxis"    # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "zAxis"    # Lcom/badlogic/gdx/math/Vector3;
    .param p4, "pos"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    const/4 v3, 0x0

    .line 258
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, v0, v1

    .line 259
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x4

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v2, v0, v1

    .line 260
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x8

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v2, v0, v1

    .line 261
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x1

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, v0, v1

    .line 262
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v2, v0, v1

    .line 263
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x9

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v2, v0, v1

    .line 264
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x2

    iget v2, p3, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, v0, v1

    .line 265
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x6

    iget v2, p3, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v2, v0, v1

    .line 266
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    iget v2, p3, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v2, v0, v1

    .line 267
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    iget v2, p4, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, v0, v1

    .line 268
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    iget v2, p4, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v2, v0, v1

    .line 269
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    iget v2, p4, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v2, v0, v1

    .line 270
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x3

    aput v3, v0, v1

    .line 271
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x7

    aput v3, v0, v1

    .line 272
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xb

    aput v3, v0, v1

    .line 273
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xf

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 274
    return-object p0
.end method

.method public set([F)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3
    .param p1, "values"    # [F

    .prologue
    const/4 v2, 0x0

    .line 128
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    return-object p0
.end method

.method public setAsAffine(Lcom/badlogic/gdx/math/Affine2;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3
    .param p1, "affine"    # Lcom/badlogic/gdx/math/Affine2;

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    iget v2, p1, Lcom/badlogic/gdx/math/Affine2;->m00:F

    aput v2, v0, v1

    .line 1029
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x1

    iget v2, p1, Lcom/badlogic/gdx/math/Affine2;->m10:F

    aput v2, v0, v1

    .line 1030
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x4

    iget v2, p1, Lcom/badlogic/gdx/math/Affine2;->m01:F

    aput v2, v0, v1

    .line 1031
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    iget v2, p1, Lcom/badlogic/gdx/math/Affine2;->m11:F

    aput v2, v0, v1

    .line 1032
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    iget v2, p1, Lcom/badlogic/gdx/math/Affine2;->m02:F

    aput v2, v0, v1

    .line 1033
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    iget v2, p1, Lcom/badlogic/gdx/math/Affine2;->m12:F

    aput v2, v0, v1

    .line 1034
    return-object p0
.end method

.method public setAsAffine(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 7
    .param p1, "mat"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    const/16 v6, 0xc

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1048
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v2

    aput v1, v0, v2

    .line 1049
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v3

    aput v1, v0, v3

    .line 1050
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v4

    aput v1, v0, v4

    .line 1051
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v5

    aput v1, v0, v5

    .line 1052
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v6

    aput v1, v0, v6

    .line 1053
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    aput v2, v0, v1

    .line 1054
    return-object p0
.end method

.method public setFromEulerAngles(FFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1
    .param p1, "yaw"    # F
    .param p2, "pitch"    # F
    .param p3, "roll"    # F

    .prologue
    .line 787
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Quaternion;->setEulerAngles(FFF)Lcom/badlogic/gdx/math/Quaternion;

    .line 788
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public setToLookAt(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3
    .param p1, "direction"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "up"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 828
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->l_vez:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 829
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->l_vex:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 830
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->l_vex:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 831
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->l_vey:Lcom/badlogic/gdx/math/Vector3;

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->l_vex:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->l_vez:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 832
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 833
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->l_vex:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, v0, v1

    .line 834
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x4

    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->l_vex:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v2, v0, v1

    .line 835
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x8

    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->l_vex:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v2, v0, v1

    .line 836
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x1

    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->l_vey:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, v0, v1

    .line 837
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->l_vey:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v2, v0, v1

    .line 838
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x9

    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->l_vey:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v2, v0, v1

    .line 839
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x2

    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->l_vez:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float v2, v2

    aput v2, v0, v1

    .line 840
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x6

    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->l_vez:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float v2, v2

    aput v2, v0, v1

    .line 841
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->l_vez:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float v2, v2

    aput v2, v0, v1

    .line 843
    return-object p0
.end method

.method public setToLookAt(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 4
    .param p1, "position"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "target"    # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "up"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 856
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 857
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v0, p3}, Lcom/badlogic/gdx/math/Matrix4;->setToLookAt(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    .line 858
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpMat:Lcom/badlogic/gdx/math/Matrix4;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float v1, v1

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float v2, v2

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->setToTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 860
    return-object p0
.end method

.method public setToOrtho(FFFFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 9
    .param p1, "left"    # F
    .param p2, "right"    # F
    .param p3, "bottom"    # F
    .param p4, "top"    # F
    .param p5, "near"    # F
    .param p6, "far"    # F

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x0

    .line 582
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 583
    sub-float v6, p2, p1

    div-float v3, v7, v6

    .line 584
    .local v3, "x_orth":F
    sub-float v6, p4, p3

    div-float v4, v7, v6

    .line 585
    .local v4, "y_orth":F
    const/high16 v6, -0x40000000    # -2.0f

    sub-float v7, p6, p5

    div-float v5, v6, v7

    .line 587
    .local v5, "z_orth":F
    add-float v6, p2, p1

    neg-float v6, v6

    sub-float v7, p2, p1

    div-float v0, v6, v7

    .line 588
    .local v0, "tx":F
    add-float v6, p4, p3

    neg-float v6, v6

    sub-float v7, p4, p3

    div-float v1, v6, v7

    .line 589
    .local v1, "ty":F
    add-float v6, p6, p5

    neg-float v6, v6

    sub-float v7, p6, p5

    div-float v2, v6, v7

    .line 591
    .local v2, "tz":F
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x0

    aput v3, v6, v7

    .line 592
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x1

    aput v8, v6, v7

    .line 593
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x2

    aput v8, v6, v7

    .line 594
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x3

    aput v8, v6, v7

    .line 595
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x4

    aput v8, v6, v7

    .line 596
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x5

    aput v4, v6, v7

    .line 597
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x6

    aput v8, v6, v7

    .line 598
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x7

    aput v8, v6, v7

    .line 599
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0x8

    aput v8, v6, v7

    .line 600
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0x9

    aput v8, v6, v7

    .line 601
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xa

    aput v5, v6, v7

    .line 602
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xb

    aput v8, v6, v7

    .line 603
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xc

    aput v0, v6, v7

    .line 604
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xd

    aput v1, v6, v7

    .line 605
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xe

    aput v2, v6, v7

    .line 606
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xf

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v6, v7

    .line 608
    return-object p0
.end method

.method public setToOrtho2D(FFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    .line 551
    add-float v2, p1, p3

    add-float v4, p2, p4

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/math/Matrix4;->setToOrtho(FFFFFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 552
    return-object p0
.end method

.method public setToOrtho2D(FFFFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "near"    # F
    .param p6, "far"    # F

    .prologue
    .line 566
    add-float v2, p1, p3

    add-float v4, p2, p4

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/math/Matrix4;->setToOrtho(FFFFFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 567
    return-object p0
.end method

.method public setToProjection(FFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 11
    .param p1, "near"    # F
    .param p2, "far"    # F
    .param p3, "fovy"    # F
    .param p4, "aspectRatio"    # F

    .prologue
    const/4 v10, 0x0

    .line 480
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 481
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    float-to-double v6, p3

    const-wide v8, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    double-to-float v2, v4

    .line 482
    .local v2, "l_fd":F
    add-float v3, p2, p1

    sub-float v4, p1, p2

    div-float v0, v3, v4

    .line 483
    .local v0, "l_a1":F
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, p2

    mul-float/2addr v3, p1

    sub-float v4, p1, p2

    div-float v1, v3, v4

    .line 484
    .local v1, "l_a2":F
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x0

    div-float v5, v2, p4

    aput v5, v3, v4

    .line 485
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x1

    aput v10, v3, v4

    .line 486
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x2

    aput v10, v3, v4

    .line 487
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x3

    aput v10, v3, v4

    .line 488
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x4

    aput v10, v3, v4

    .line 489
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x5

    aput v2, v3, v4

    .line 490
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x6

    aput v10, v3, v4

    .line 491
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x7

    aput v10, v3, v4

    .line 492
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0x8

    aput v10, v3, v4

    .line 493
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0x9

    aput v10, v3, v4

    .line 494
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xa

    aput v0, v3, v4

    .line 495
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xb

    const/high16 v5, -0x40800000    # -1.0f

    aput v5, v3, v4

    .line 496
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xc

    aput v10, v3, v4

    .line 497
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xd

    aput v10, v3, v4

    .line 498
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xe

    aput v1, v3, v4

    .line 499
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xf

    aput v10, v3, v4

    .line 501
    return-object p0
.end method

.method public setToProjection(FFFFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 9
    .param p1, "left"    # F
    .param p2, "right"    # F
    .param p3, "bottom"    # F
    .param p4, "top"    # F
    .param p5, "near"    # F
    .param p6, "far"    # F

    .prologue
    .line 516
    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, p5

    sub-float v7, p2, p1

    div-float v4, v6, v7

    .line 517
    .local v4, "x":F
    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, p5

    sub-float v7, p4, p3

    div-float v5, v6, v7

    .line 518
    .local v5, "y":F
    add-float v6, p2, p1

    sub-float v7, p2, p1

    div-float v0, v6, v7

    .line 519
    .local v0, "a":F
    add-float v6, p4, p3

    sub-float v7, p4, p3

    div-float v1, v6, v7

    .line 520
    .local v1, "b":F
    add-float v6, p6, p5

    sub-float v7, p5, p6

    div-float v2, v6, v7

    .line 521
    .local v2, "l_a1":F
    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, p6

    mul-float/2addr v6, p5

    sub-float v7, p5, p6

    div-float v3, v6, v7

    .line 522
    .local v3, "l_a2":F
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x0

    aput v4, v6, v7

    .line 523
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput v8, v6, v7

    .line 524
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x2

    const/4 v8, 0x0

    aput v8, v6, v7

    .line 525
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x3

    const/4 v8, 0x0

    aput v8, v6, v7

    .line 526
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x4

    const/4 v8, 0x0

    aput v8, v6, v7

    .line 527
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x5

    aput v5, v6, v7

    .line 528
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x6

    const/4 v8, 0x0

    aput v8, v6, v7

    .line 529
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x7

    const/4 v8, 0x0

    aput v8, v6, v7

    .line 530
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0x8

    aput v0, v6, v7

    .line 531
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0x9

    aput v1, v6, v7

    .line 532
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xa

    aput v2, v6, v7

    .line 533
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xb

    const/high16 v8, -0x40800000    # -1.0f

    aput v8, v6, v7

    .line 534
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xc

    const/4 v8, 0x0

    aput v8, v6, v7

    .line 535
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xd

    const/4 v8, 0x0

    aput v8, v6, v7

    .line 536
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xe

    aput v3, v6, v7

    .line 537
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xf

    const/4 v8, 0x0

    aput v8, v6, v7

    .line 539
    return-object p0
.end method

.method public setToRotation(FFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1
    .param p1, "axisX"    # F
    .param p2, "axisY"    # F
    .param p3, "axisZ"    # F
    .param p4, "degrees"    # F

    .prologue
    .line 739
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-nez v0, :cond_0

    .line 740
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 743
    .end local p0    # "this":Lcom/badlogic/gdx/math/Matrix4;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/badlogic/gdx/math/Matrix4;
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxis(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p0

    goto :goto_0
.end method

.method public setToRotation(FFFFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 7
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "z1"    # F
    .param p4, "x2"    # F
    .param p5, "y2"    # F
    .param p6, "z2"    # F

    .prologue
    .line 778
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/math/Quaternion;->setFromCross(FFFFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public setToRotation(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1
    .param p1, "axis"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "degrees"    # F

    .prologue
    .line 711
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 712
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 715
    .end local p0    # "this":Lcom/badlogic/gdx/math/Matrix4;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/badlogic/gdx/math/Matrix4;
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p0

    goto :goto_0
.end method

.method public setToRotation(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1
    .param p1, "v1"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "v2"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 766
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Quaternion;->setFromCross(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public setToRotationRad(FFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1
    .param p1, "axisX"    # F
    .param p2, "axisY"    # F
    .param p3, "axisZ"    # F
    .param p4, "radians"    # F

    .prologue
    .line 754
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-nez v0, :cond_0

    .line 755
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 758
    .end local p0    # "this":Lcom/badlogic/gdx/math/Matrix4;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/badlogic/gdx/math/Matrix4;
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxisRad(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p0

    goto :goto_0
.end method

.method public setToRotationRad(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1
    .param p1, "axis"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "radians"    # F

    .prologue
    .line 724
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 725
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 728
    .end local p0    # "this":Lcom/badlogic/gdx/math/Matrix4;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/badlogic/gdx/math/Matrix4;
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxisRad(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p0

    goto :goto_0
.end method

.method public setToScaling(FFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 810
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 811
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 812
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    aput p2, v0, v1

    .line 813
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    aput p3, v0, v1

    .line 814
    return-object p0
.end method

.method public setToScaling(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 796
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 797
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, v0, v1

    .line 798
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v2, v0, v1

    .line 799
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v2, v0, v1

    .line 800
    return-object p0
.end method

.method public setToTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 656
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 657
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    aput p1, v0, v1

    .line 658
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    aput p2, v0, v1

    .line 659
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    aput p3, v0, v1

    .line 660
    return-object p0
.end method

.method public setToTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 641
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 642
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, v0, v1

    .line 643
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v2, v0, v1

    .line 644
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v2, v0, v1

    .line 645
    return-object p0
.end method

.method public setToTranslationAndScaling(FFFFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 2
    .param p1, "translationX"    # F
    .param p2, "translationY"    # F
    .param p3, "translationZ"    # F
    .param p4, "scalingX"    # F
    .param p5, "scalingY"    # F
    .param p6, "scalingZ"    # F

    .prologue
    .line 692
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 693
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    aput p1, v0, v1

    .line 694
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    aput p2, v0, v1

    .line 695
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    aput p3, v0, v1

    .line 696
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aput p4, v0, v1

    .line 697
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    aput p5, v0, v1

    .line 698
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    aput p6, v0, v1

    .line 699
    return-object p0
.end method

.method public setToTranslationAndScaling(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3
    .param p1, "translation"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "scaling"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 670
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 671
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, v0, v1

    .line 672
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v2, v0, v1

    .line 673
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v2, v0, v1

    .line 674
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, v0, v1

    .line 675
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v2, v0, v1

    .line 676
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v2, v0, v1

    .line 677
    return-object p0
.end method

.method public setToWorld(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 4
    .param p1, "position"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "forward"    # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "up"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 868
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpForward:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 869
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->right:Lcom/badlogic/gdx/math/Vector3;

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->tmpForward:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 870
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpUp:Lcom/badlogic/gdx/math/Vector3;

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->right:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->tmpForward:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 872
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->right:Lcom/badlogic/gdx/math/Vector3;

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->tmpUp:Lcom/badlogic/gdx/math/Vector3;

    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->tmpForward:Lcom/badlogic/gdx/math/Vector3;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    .line 873
    return-object p0
.end method

.method public setTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 629
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    aput p1, v0, v1

    .line 630
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    aput p2, v0, v1

    .line 631
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    aput p3, v0, v1

    .line 632
    return-object p0
.end method

.method public setTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 616
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, v0, v1

    .line 617
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v2, v0, v1

    .line 618
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v2, v0, v1

    .line 619
    return-object p0
.end method

.method public toNormalMatrix()Lcom/badlogic/gdx/math/Matrix4;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1141
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    aput v2, v0, v1

    .line 1142
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    aput v2, v0, v1

    .line 1143
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    aput v2, v0, v1

    .line 1144
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->inv()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix4;->tra()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x4

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0x8

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0xc

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0x9

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0xd

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0xa

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0xe

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x7

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0xb

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0xf

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tra()Lcom/badlogic/gdx/math/Matrix4;
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 342
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v2

    aput v1, v0, v2

    .line 343
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v3

    aput v1, v0, v6

    .line 344
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v4

    aput v2, v0, v1

    .line 345
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v5

    aput v2, v0, v1

    .line 346
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v6

    aput v1, v0, v3

    .line 347
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    aput v2, v0, v1

    .line 348
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    aput v2, v0, v1

    .line 349
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    aput v2, v0, v1

    .line 350
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0x8

    aget v1, v1, v2

    aput v1, v0, v4

    .line 351
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x9

    aget v2, v2, v3

    aput v2, v0, v1

    .line 352
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xa

    aget v2, v2, v3

    aput v2, v0, v1

    .line 353
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xb

    aget v2, v2, v3

    aput v2, v0, v1

    .line 354
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0xc

    aget v1, v1, v2

    aput v1, v0, v5

    .line 355
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    aput v2, v0, v1

    .line 356
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xe

    aget v2, v2, v3

    aput v2, v0, v1

    .line 357
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xf

    aget v2, v2, v3

    aput v2, v0, v1

    .line 358
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->set([F)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public translate(FFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 1417
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v1, 0x0

    aput v3, v0, v1

    .line 1418
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v1, 0x4

    aput v2, v0, v1

    .line 1419
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0x8

    aput v2, v0, v1

    .line 1420
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xc

    aput p1, v0, v1

    .line 1421
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 1422
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v1, 0x5

    aput v3, v0, v1

    .line 1423
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0x9

    aput v2, v0, v1

    .line 1424
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xd

    aput p2, v0, v1

    .line 1425
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 1426
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v1, 0x6

    aput v2, v0, v1

    .line 1427
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xa

    aput v3, v0, v1

    .line 1428
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xe

    aput p3, v0, v1

    .line 1429
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 1430
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 1431
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xb

    aput v2, v0, v1

    .line 1432
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xf

    aput v3, v0, v1

    .line 1434
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->mul([F[F)V

    .line 1435
    return-object p0
.end method

.method public translate(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3
    .param p1, "translation"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 1407
    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->translate(FFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public trn(FFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 300
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 301
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    aget v2, v0, v1

    add-float/2addr v2, p2

    aput v2, v0, v1

    .line 302
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    aget v2, v0, v1

    add-float/2addr v2, p3

    aput v2, v0, v1

    .line 303
    return-object p0
.end method

.method public trn(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 4
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 288
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 289
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 290
    return-object p0
.end method
