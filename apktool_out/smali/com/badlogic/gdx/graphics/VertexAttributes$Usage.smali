.class public final Lcom/badlogic/gdx/graphics/VertexAttributes$Usage;
.super Ljava/lang/Object;
.source "VertexAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/VertexAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Usage"
.end annotation


# static fields
.field public static final BiNormal:I = 0x100

.field public static final BoneWeight:I = 0x40

.field public static final Color:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ColorPacked:I = 0x4

.field public static final ColorUnpacked:I = 0x2

.field public static final Generic:I = 0x20

.field public static final Normal:I = 0x8

.field public static final Position:I = 0x1

.field public static final Tangent:I = 0x80

.field public static final TextureCoordinates:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
