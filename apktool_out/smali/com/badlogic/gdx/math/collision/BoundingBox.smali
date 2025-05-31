.class public Lcom/badlogic/gdx/math/collision/BoundingBox;
.super Ljava/lang/Object;
.source "BoundingBox.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x11d8ebabe8cf8b6fL

.field private static final tmpVector:Lcom/badlogic/gdx/math/Vector3;


# instance fields
.field private final cnt:Lcom/badlogic/gdx/math/Vector3;

.field private corners:[Lcom/badlogic/gdx/math/Vector3;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final dim:Lcom/badlogic/gdx/math/Vector3;

.field public final max:Lcom/badlogic/gdx/math/Vector3;

.field public final min:Lcom/badlogic/gdx/math/Vector3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/collision/BoundingBox;->tmpVector:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    .line 35
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    .line 37
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->cnt:Lcom/badlogic/gdx/math/Vector3;

    .line 38
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->dim:Lcom/badlogic/gdx/math/Vector3;

    .line 176
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->clr()Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 177
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 1
    .param p1, "minimum"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "maximum"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    .line 35
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    .line 37
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->cnt:Lcom/badlogic/gdx/math/Vector3;

    .line 38
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->dim:Lcom/badlogic/gdx/math/Vector3;

    .line 191
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/collision/BoundingBox;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 192
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/collision/BoundingBox;)V
    .locals 1
    .param p1, "bounds"    # Lcom/badlogic/gdx/math/collision/BoundingBox;

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    .line 35
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    .line 37
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->cnt:Lcom/badlogic/gdx/math/Vector3;

    .line 38
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->dim:Lcom/badlogic/gdx/math/Vector3;

    .line 183
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->set(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 184
    return-void
.end method

.method static final max(FF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 371
    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    .end local p0    # "a":F
    :goto_0
    return p0

    .restart local p0    # "a":F
    :cond_0
    move p0, p1

    goto :goto_0
.end method

.method static final min(FF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 367
    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    .end local p1    # "b":F
    :goto_0
    return p1

    .restart local p1    # "b":F
    :cond_0
    move p1, p0

    goto :goto_0
.end method


# virtual methods
.method public clr()Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 261
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v2, v2, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2, v2, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public contains(Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 2
    .param p1, "v"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 348
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(Lcom/badlogic/gdx/math/collision/BoundingBox;)Z
    .locals 2
    .param p1, "b"    # Lcom/badlogic/gdx/math/collision/BoundingBox;

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v1, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v1, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v1, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v1, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v1, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v1, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ext(FFF)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 363
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-static {v1, p1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-static {v2, p2}, Lcom/badlogic/gdx/math/collision/BoundingBox;->min(FF)F

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-static {v3, p3}, Lcom/badlogic/gdx/math/collision/BoundingBox;->min(FF)F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-static {v2, p1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->max(FF)F

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-static {v3, p2}, Lcom/badlogic/gdx/math/collision/BoundingBox;->max(FF)F

    move-result v3

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-static {v4, p3}, Lcom/badlogic/gdx/math/collision/BoundingBox;->max(FF)F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public ext(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 6
    .param p1, "point"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-static {v1, v2}, Lcom/badlogic/gdx/math/collision/BoundingBox;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-static {v2, v3}, Lcom/badlogic/gdx/math/collision/BoundingBox;->min(FF)F

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-static {v3, v4}, Lcom/badlogic/gdx/math/collision/BoundingBox;->min(FF)F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v5, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public ext(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 6
    .param p1, "a_bounds"    # Lcom/badlogic/gdx/math/collision/BoundingBox;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v2, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-static {v1, v2}, Lcom/badlogic/gdx/math/collision/BoundingBox;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v3, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-static {v2, v3}, Lcom/badlogic/gdx/math/collision/BoundingBox;->min(FF)F

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-static {v3, v4}, Lcom/badlogic/gdx/math/collision/BoundingBox;->min(FF)F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v3, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-static {v2, v3}, Lcom/badlogic/gdx/math/collision/BoundingBox;->max(FF)F

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-static {v3, v4}, Lcom/badlogic/gdx/math/collision/BoundingBox;->max(FF)F

    move-result v3

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-static {v4, v5}, Lcom/badlogic/gdx/math/collision/BoundingBox;->max(FF)F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public ext(Lcom/badlogic/gdx/math/collision/BoundingBox;Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 4
    .param p1, "bounds"    # Lcom/badlogic/gdx/math/collision/BoundingBox;
    .param p2, "transform"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 285
    sget-object v0, Lcom/badlogic/gdx/math/collision/BoundingBox;->tmpVector:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v2, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v3, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 286
    sget-object v0, Lcom/badlogic/gdx/math/collision/BoundingBox;->tmpVector:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v2, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v3, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 287
    sget-object v0, Lcom/badlogic/gdx/math/collision/BoundingBox;->tmpVector:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v2, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v3, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 288
    sget-object v0, Lcom/badlogic/gdx/math/collision/BoundingBox;->tmpVector:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v2, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v3, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 289
    sget-object v0, Lcom/badlogic/gdx/math/collision/BoundingBox;->tmpVector:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v2, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v3, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 290
    sget-object v0, Lcom/badlogic/gdx/math/collision/BoundingBox;->tmpVector:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v2, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v3, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 291
    sget-object v0, Lcom/badlogic/gdx/math/collision/BoundingBox;->tmpVector:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v2, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v3, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 292
    sget-object v0, Lcom/badlogic/gdx/math/collision/BoundingBox;->tmpVector:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v2, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v3, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 293
    return-object p0
.end method

.method public getCenter()Lcom/badlogic/gdx/math/Vector3;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->cnt:Lcom/badlogic/gdx/math/Vector3;

    return-object v0
.end method

.method public getCenter(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 1
    .param p1, "out"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->cnt:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public getCenterX()F
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->cnt:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    return v0
.end method

.method public getCenterY()F
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->cnt:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    return v0
.end method

.method public getCenterZ()F
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->cnt:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    return v0
.end method

.method public getCorner000(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .param p1, "out"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public getCorner001(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .param p1, "out"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public getCorner010(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .param p1, "out"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public getCorner011(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .param p1, "out"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public getCorner100(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .param p1, "out"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public getCorner101(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .param p1, "out"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public getCorner110(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .param p1, "out"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public getCorner111(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .param p1, "out"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public getCorners()[Lcom/badlogic/gdx/math/Vector3;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v3, 0x8

    .line 75
    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->corners:[Lcom/badlogic/gdx/math/Vector3;

    if-nez v1, :cond_0

    .line 76
    new-array v1, v3, [Lcom/badlogic/gdx/math/Vector3;

    iput-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->corners:[Lcom/badlogic/gdx/math/Vector3;

    .line 77
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 78
    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->corners:[Lcom/badlogic/gdx/math/Vector3;

    new-instance v2, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    aput-object v2, v1, v0

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->corners:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 81
    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->corners:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 82
    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->corners:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 83
    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->corners:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 84
    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->corners:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 85
    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->corners:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 86
    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->corners:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 87
    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->corners:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 88
    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->corners:[Lcom/badlogic/gdx/math/Vector3;

    return-object v1
.end method

.method public getDepth()F
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->dim:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    return v0
.end method

.method public getDimensions()Lcom/badlogic/gdx/math/Vector3;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->dim:Lcom/badlogic/gdx/math/Vector3;

    return-object v0
.end method

.method public getDimensions(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 1
    .param p1, "out"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->dim:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->dim:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    return v0
.end method

.method public getMax()Lcom/badlogic/gdx/math/Vector3;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    return-object v0
.end method

.method public getMax(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 1
    .param p1, "out"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public getMin()Lcom/badlogic/gdx/math/Vector3;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    return-object v0
.end method

.method public getMin(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 1
    .param p1, "out"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->dim:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    return v0
.end method

.method public inf()Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 4

    .prologue
    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    const/4 v1, 0x0

    .line 243
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v3, v3, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 244
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v2, v2, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 245
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->cnt:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1, v1, v1}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 246
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->dim:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1, v1, v1}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 247
    return-object p0
.end method

.method public intersects(Lcom/badlogic/gdx/math/collision/BoundingBox;)Z
    .locals 10
    .param p1, "b"    # Lcom/badlogic/gdx/math/collision/BoundingBox;

    .prologue
    const/4 v6, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    .line 327
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->isValid()Z

    move-result v7

    if-nez v7, :cond_1

    .line 340
    :cond_0
    :goto_0
    return v6

    .line 331
    :cond_1
    iget-object v7, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->cnt:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v8, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->cnt:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 332
    .local v0, "lx":F
    iget-object v7, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->dim:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->x:F

    div-float/2addr v7, v9

    iget-object v8, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->dim:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    div-float/2addr v8, v9

    add-float v3, v7, v8

    .line 334
    .local v3, "sumx":F
    iget-object v7, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->cnt:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v8, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->cnt:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 335
    .local v1, "ly":F
    iget-object v7, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->dim:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float/2addr v7, v9

    iget-object v8, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->dim:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float/2addr v8, v9

    add-float v4, v7, v8

    .line 337
    .local v4, "sumy":F
    iget-object v7, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->cnt:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v8, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->cnt:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 338
    .local v2, "lz":F
    iget-object v7, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->dim:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->z:F

    div-float/2addr v7, v9

    iget-object v8, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->dim:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->z:F

    div-float/2addr v8, v9

    add-float v5, v7, v8

    .line 340
    .local v5, "sumz":F
    cmpg-float v7, v0, v3

    if-gtz v7, :cond_0

    cmpg-float v7, v1, v4

    if-gtz v7, :cond_0

    cmpg-float v7, v2, v5

    if-gtz v7, :cond_0

    const/4 v6, 0x1

    goto :goto_0
.end method

.method public isValid()Z
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 7
    .param p1, "transform"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 302
    iget-object v6, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v6, Lcom/badlogic/gdx/math/Vector3;->x:F

    .local v0, "x0":F
    iget-object v6, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v6, Lcom/badlogic/gdx/math/Vector3;->y:F

    .local v2, "y0":F
    iget-object v6, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v6, Lcom/badlogic/gdx/math/Vector3;->z:F

    .local v4, "z0":F
    iget-object v6, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v6, Lcom/badlogic/gdx/math/Vector3;->x:F

    .local v1, "x1":F
    iget-object v6, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v6, Lcom/badlogic/gdx/math/Vector3;->y:F

    .local v3, "y1":F
    iget-object v6, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v6, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 303
    .local v5, "z1":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->inf()Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 304
    sget-object v6, Lcom/badlogic/gdx/math/collision/BoundingBox;->tmpVector:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v0, v2, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 305
    sget-object v6, Lcom/badlogic/gdx/math/collision/BoundingBox;->tmpVector:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v0, v2, v5}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 306
    sget-object v6, Lcom/badlogic/gdx/math/collision/BoundingBox;->tmpVector:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v0, v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 307
    sget-object v6, Lcom/badlogic/gdx/math/collision/BoundingBox;->tmpVector:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v0, v3, v5}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 308
    sget-object v6, Lcom/badlogic/gdx/math/collision/BoundingBox;->tmpVector:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v1, v2, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 309
    sget-object v6, Lcom/badlogic/gdx/math/collision/BoundingBox;->tmpVector:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v1, v2, v5}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 310
    sget-object v6, Lcom/badlogic/gdx/math/collision/BoundingBox;->tmpVector:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v1, v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 311
    sget-object v6, Lcom/badlogic/gdx/math/collision/BoundingBox;->tmpVector:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v1, v3, v5}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 312
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 5
    .param p1, "minimum"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "maximum"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 208
    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    :goto_0
    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    :goto_1
    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v4, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_2

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    :goto_2
    invoke-virtual {v3, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 210
    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    :goto_3
    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    :goto_4
    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v4, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_5

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    :goto_5
    invoke-virtual {v3, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 212
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->cnt:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    .line 213
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->dim:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 214
    return-object p0

    .line 208
    :cond_0
    iget v0, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    goto :goto_0

    :cond_1
    iget v1, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    goto :goto_1

    :cond_2
    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    goto :goto_2

    .line 210
    :cond_3
    iget v0, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    goto :goto_3

    :cond_4
    iget v1, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    goto :goto_4

    :cond_5
    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    goto :goto_5
.end method

.method public set(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 2
    .param p1, "bounds"    # Lcom/badlogic/gdx/math/collision/BoundingBox;

    .prologue
    .line 199
    iget-object v0, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/util/List;)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/math/Vector3;",
            ">;)",
            "Lcom/badlogic/gdx/math/collision/BoundingBox;"
        }
    .end annotation

    .prologue
    .line 233
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/math/Vector3;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->inf()Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 234
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/math/Vector3;

    .line 235
    .local v1, "l_point":Lcom/badlogic/gdx/math/Vector3;
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    goto :goto_0

    .line 236
    .end local v1    # "l_point":Lcom/badlogic/gdx/math/Vector3;
    :cond_0
    return-object p0
.end method

.method public set([Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 4
    .param p1, "points"    # [Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->inf()Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 223
    move-object v0, p1

    .local v0, "arr$":[Lcom/badlogic/gdx/math/Vector3;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 224
    .local v2, "l_point":Lcom/badlogic/gdx/math/Vector3;
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 225
    .end local v2    # "l_point":Lcom/badlogic/gdx/math/Vector3;
    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected updateCorners()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 69
    return-void
.end method
