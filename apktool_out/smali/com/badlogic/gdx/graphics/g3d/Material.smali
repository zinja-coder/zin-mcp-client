.class public Lcom/badlogic/gdx/graphics/g3d/Material;
.super Lcom/badlogic/gdx/graphics/g3d/Attributes;
.source "Material.java"


# static fields
.field private static counter:I


# instance fields
.field public id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput v0, Lcom/badlogic/gdx/graphics/g3d/Material;->counter:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mtl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/badlogic/gdx/graphics/g3d/Material;->counter:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/badlogic/gdx/graphics/g3d/Material;->counter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/Material;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Material;)V
    .locals 1
    .param p1, "copyFrom"    # Lcom/badlogic/gdx/graphics/g3d/Material;

    .prologue
    .line 67
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Material;->id:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/graphics/g3d/Material;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g3d/Material;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/Array;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/Attribute;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "attributes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/Attribute;>;"
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/Material;-><init>()V

    .line 56
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(Ljava/lang/Iterable;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->id:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g3d/Material;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "copyFrom"    # Lcom/badlogic/gdx/graphics/g3d/Material;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/Material;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g3d/Material;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/Attribute;

    .line 74
    .local v0, "attr":Lcom/badlogic/gdx/graphics/g3d/Attribute;
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/Attribute;->copy()Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    goto :goto_0

    .line 75
    .end local v0    # "attr":Lcom/badlogic/gdx/graphics/g3d/Attribute;
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/utils/Array;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/Attribute;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p2, "attributes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/Attribute;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/Material;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(Ljava/lang/Iterable;)V

    .line 63
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lcom/badlogic/gdx/graphics/g3d/Attribute;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "attributes"    # [Lcom/badlogic/gdx/graphics/g3d/Attribute;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/Material;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/Material;->set([Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 51
    return-void
.end method

.method public varargs constructor <init>([Lcom/badlogic/gdx/graphics/g3d/Attribute;)V
    .locals 0
    .param p1, "attributes"    # [Lcom/badlogic/gdx/graphics/g3d/Attribute;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/Material;-><init>()V

    .line 44
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/Material;->set([Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 45
    return-void
.end method


# virtual methods
.method public final copy()Lcom/badlogic/gdx/graphics/g3d/Material;
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/Material;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/Material;-><init>(Lcom/badlogic/gdx/graphics/g3d/Material;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    return v0
.end method
