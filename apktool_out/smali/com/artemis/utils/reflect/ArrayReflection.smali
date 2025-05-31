.class public final Lcom/artemis/utils/reflect/ArrayReflection;
.super Ljava/lang/Object;
.source "ArrayReflection.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I

    .prologue
    .line 36
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getLength(Ljava/lang/Object;)I
    .locals 1
    .param p0, "array"    # Ljava/lang/Object;

    .prologue
    .line 31
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 1
    .param p0, "c"    # Ljava/lang/Class;
    .param p1, "size"    # I

    .prologue
    .line 26
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static set(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 41
    invoke-static {p0, p1, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 42
    return-void
.end method
