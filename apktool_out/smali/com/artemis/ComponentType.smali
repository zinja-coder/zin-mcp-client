.class public Lcom/artemis/ComponentType;
.super Ljava/lang/Object;
.source "ComponentType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artemis/ComponentType$Taxonomy;
    }
.end annotation


# instance fields
.field private final index:I

.field packedHasWorldConstructor:Z

.field private final taxonomy:Lcom/artemis/ComponentType$Taxonomy;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/artemis/Component;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;I)V
    .locals 1
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/artemis/Component;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/artemis/Component;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/artemis/ComponentType;->packedHasWorldConstructor:Z

    .line 33
    iput p2, p0, Lcom/artemis/ComponentType;->index:I

    .line 34
    iput-object p1, p0, Lcom/artemis/ComponentType;->type:Ljava/lang/Class;

    .line 35
    const-class v0, Lcom/artemis/PackedComponent;

    invoke-static {v0, p1}, Lcom/artemis/utils/reflect/ClassReflection;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    sget-object v0, Lcom/artemis/ComponentType$Taxonomy;->PACKED:Lcom/artemis/ComponentType$Taxonomy;

    iput-object v0, p0, Lcom/artemis/ComponentType;->taxonomy:Lcom/artemis/ComponentType$Taxonomy;

    .line 37
    invoke-static {p1}, Lcom/artemis/ComponentType;->hasWorldConstructor(Ljava/lang/Class;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/artemis/ComponentType;->packedHasWorldConstructor:Z

    .line 43
    :goto_0
    return-void

    .line 38
    :cond_0
    const-class v0, Lcom/artemis/PooledComponent;

    invoke-static {v0, p1}, Lcom/artemis/utils/reflect/ClassReflection;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    sget-object v0, Lcom/artemis/ComponentType$Taxonomy;->POOLED:Lcom/artemis/ComponentType$Taxonomy;

    iput-object v0, p0, Lcom/artemis/ComponentType;->taxonomy:Lcom/artemis/ComponentType$Taxonomy;

    goto :goto_0

    .line 41
    :cond_1
    sget-object v0, Lcom/artemis/ComponentType$Taxonomy;->BASIC:Lcom/artemis/ComponentType$Taxonomy;

    iput-object v0, p0, Lcom/artemis/ComponentType;->taxonomy:Lcom/artemis/ComponentType$Taxonomy;

    goto :goto_0
.end method

.method private static hasWorldConstructor(Ljava/lang/Class;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/artemis/Component;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/artemis/Component;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 46
    invoke-static {p0}, Lcom/artemis/utils/reflect/ClassReflection;->getConstructors(Ljava/lang/Class;)[Lcom/artemis/utils/reflect/Constructor;

    move-result-object v0

    .line 47
    .local v0, "constructors":[Lcom/artemis/utils/reflect/Constructor;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v0

    if-le v5, v1, :cond_1

    .line 49
    aget-object v5, v0, v1

    invoke-virtual {v5}, Lcom/artemis/utils/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 50
    .local v2, "types":[Ljava/lang/Class;
    array-length v5, v2

    if-ne v5, v3, :cond_0

    aget-object v5, v2, v4

    const-class v6, Lcom/artemis/World;

    if-ne v5, v6, :cond_0

    .line 54
    .end local v2    # "types":[Ljava/lang/Class;
    :goto_1
    return v3

    .line 47
    .restart local v2    # "types":[Ljava/lang/Class;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "types":[Ljava/lang/Class;
    :cond_1
    move v3, v4

    .line 54
    goto :goto_1
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/artemis/ComponentType;->index:I

    return v0
.end method

.method protected getTaxonomy()Lcom/artemis/ComponentType$Taxonomy;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/artemis/ComponentType;->taxonomy:Lcom/artemis/ComponentType$Taxonomy;

    return-object v0
.end method

.method protected getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/artemis/Component;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/artemis/ComponentType;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public isPackedComponent()Z
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/artemis/ComponentType;->taxonomy:Lcom/artemis/ComponentType$Taxonomy;

    sget-object v1, Lcom/artemis/ComponentType$Taxonomy;->PACKED:Lcom/artemis/ComponentType$Taxonomy;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ComponentType["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/artemis/ComponentType;->type:Ljava/lang/Class;

    invoke-static {v1}, Lcom/artemis/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/artemis/ComponentType;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
