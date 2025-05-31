.class public abstract Lcom/badlogic/gdx/graphics/g3d/Attribute;
.super Ljava/lang/Object;
.source "Attribute.java"


# static fields
.field private static final types:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final type:J

.field private final typeBit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/Attribute;->types:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method protected constructor <init>(J)V
    .locals 1
    .param p1, "type"    # J

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-wide p1, p0, Lcom/badlogic/gdx/graphics/g3d/Attribute;->type:J

    .line 62
    invoke-static {p1, p2}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/Attribute;->typeBit:I

    .line 63
    return-void
.end method

.method public static final getAttributeAlias(J)Ljava/lang/String;
    .locals 8
    .param p0, "type"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 38
    const/4 v0, -0x1

    .line 39
    .local v0, "idx":I
    :cond_0
    cmp-long v1, p0, v6

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x3f

    if-ge v0, v1, :cond_1

    shr-long v2, p0, v0

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    cmp-long v1, v2, v6

    if-eqz v1, :cond_0

    .line 41
    :cond_1
    if-ltz v0, :cond_2

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/Attribute;->types:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_2

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/Attribute;->types:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final getAttributeType(Ljava/lang/String;)J
    .locals 4
    .param p0, "alias"    # Ljava/lang/String;

    .prologue
    .line 31
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/Attribute;->types:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_1

    .line 32
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/Attribute;->types:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v2, 0x1

    shl-long/2addr v2, v0

    .line 33
    :goto_1
    return-wide v2

    .line 31
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_1
.end method

.method protected static final register(Ljava/lang/String;)J
    .locals 5
    .param p0, "alias"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {p0}, Lcom/badlogic/gdx/graphics/g3d/Attribute;->getAttributeType(Ljava/lang/String;)J

    move-result-wide v0

    .line 50
    .local v0, "result":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 52
    .end local v0    # "result":J
    :goto_0
    return-wide v0

    .line 51
    .restart local v0    # "result":J
    :cond_0
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/Attribute;->types:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 52
    const-wide/16 v2, 0x1

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/Attribute;->types:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v4, v4, -0x1

    shl-long v0, v2, v4

    goto :goto_0
.end method


# virtual methods
.method public abstract copy()Lcom/badlogic/gdx/graphics/g3d/Attribute;
.end method

.method protected equals(Lcom/badlogic/gdx/graphics/g3d/Attribute;)Z
    .locals 2
    .param p1, "other"    # Lcom/badlogic/gdx/graphics/g3d/Attribute;

    .prologue
    .line 69
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g3d/Attribute;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/Attribute;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 74
    if-nez p1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v1

    .line 75
    :cond_1
    if-ne p1, p0, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 76
    :cond_2
    instance-of v2, p1, Lcom/badlogic/gdx/graphics/g3d/Attribute;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 77
    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/Attribute;

    .line 78
    .local v0, "other":Lcom/badlogic/gdx/graphics/g3d/Attribute;
    iget-wide v2, p0, Lcom/badlogic/gdx/graphics/g3d/Attribute;->type:J

    iget-wide v4, v0, Lcom/badlogic/gdx/graphics/g3d/Attribute;->type:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 79
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/Attribute;->equals(Lcom/badlogic/gdx/graphics/g3d/Attribute;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/Attribute;->typeBit:I

    mul-int/lit16 v0, v0, 0x1d41

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g3d/Attribute;->type:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Attribute;->getAttributeAlias(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
