.class public Lcom/badlogic/gdx/utils/JsonReader;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/BaseJsonReader;


# static fields
.field private static final _json_actions:[B

.field private static final _json_eof_actions:[B

.field private static final _json_index_offsets:[S

.field private static final _json_indicies:[B

.field private static final _json_key_offsets:[S

.field private static final _json_range_lengths:[B

.field private static final _json_single_lengths:[B

.field private static final _json_trans_actions:[B

.field private static final _json_trans_keys:[C

.field private static final _json_trans_targs:[B

.field static final json_en_array:I = 0x17

.field static final json_en_main:I = 0x1

.field static final json_en_object:I = 0x5

.field static final json_error:I = 0x0

.field static final json_first_final:I = 0x23

.field static final json_start:I = 0x1


# instance fields
.field private current:Lcom/badlogic/gdx/utils/JsonValue;

.field private final elements:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/utils/JsonValue;",
            ">;"
        }
    .end annotation
.end field

.field private final lastChild:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/utils/JsonValue;",
            ">;"
        }
    .end annotation
.end field

.field private root:Lcom/badlogic/gdx/utils/JsonValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 567
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_actions_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_actions:[B

    .line 574
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_key_offsets_0()[S

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_key_offsets:[S

    .line 586
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_trans_keys_0()[C

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_keys:[C

    .line 593
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_single_lengths_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_single_lengths:[B

    .line 600
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_range_lengths_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_range_lengths:[B

    .line 607
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_index_offsets_0()[S

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_index_offsets:[S

    .line 619
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_indicies_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_indicies:[B

    .line 627
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_trans_targs_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_targs:[B

    .line 635
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_trans_actions_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_actions:[B

    .line 642
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_eof_actions_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_eof_actions:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 654
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    .line 655
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->lastChild:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method private addChild(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "child"    # Lcom/badlogic/gdx/utils/JsonValue;

    .prologue
    .line 659
    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/JsonValue;->setName(Ljava/lang/String;)V

    .line 660
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v1, :cond_0

    .line 661
    iput-object p2, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    .line 662
    iput-object p2, p0, Lcom/badlogic/gdx/utils/JsonReader;->root:Lcom/badlogic/gdx/utils/JsonValue;

    .line 675
    :goto_0
    return-void

    .line 663
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->isObject()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 664
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    iget v1, v1, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    if-nez v1, :cond_2

    .line 665
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object p2, v1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .line 671
    :goto_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonReader;->lastChild:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 672
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    iget v2, v1, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    goto :goto_0

    .line 667
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonReader;->lastChild:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/JsonValue;

    .line 668
    .local v0, "last":Lcom/badlogic/gdx/utils/JsonValue;
    iput-object p2, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    .line 669
    iput-object v0, p2, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_1

    .line 674
    .end local v0    # "last":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_3
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v1, p0, Lcom/badlogic/gdx/utils/JsonReader;->root:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_0
.end method

.method private static init__json_actions_0()[B
    .locals 1

    .prologue
    .line 564
    const/16 v0, 0x1d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x1t
        0x2t
        0x1t
        0x3t
        0x1t
        0x4t
        0x1t
        0x5t
        0x1t
        0x6t
        0x1t
        0x7t
        0x1t
        0x8t
        0x2t
        0x0t
        0x7t
        0x2t
        0x0t
        0x8t
        0x2t
        0x1t
        0x3t
        0x2t
        0x1t
        0x5t
    .end array-data
.end method

.method private static init__json_eof_actions_0()[B
    .locals 1

    .prologue
    .line 638
    const/16 v0, 0x27

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private static init__json_index_offsets_0()[S
    .locals 1

    .prologue
    .line 603
    const/16 v0, 0x27

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 2
        0x0s
        0x0s
        0xbs
        0xes
        0x10s
        0x13s
        0x1cs
        0x22s
        0x28s
        0x2bs
        0x36s
        0x3es
        0x46s
        0x4fs
        0x51s
        0x5as
        0x5ds
        0x60s
        0x69s
        0x6cs
        0x6fs
        0x71s
        0x74s
        0x77s
        0x82s
        0x8as
        0x92s
        0x9ds
        0x9fs
        0xaas
        0xads
        0xb0s
        0xbbs
        0xbes
        0xc1s
        0xc4s
        0xc9s
        0xces
        0xcfs
    .end array-data
.end method

.method private static init__json_indicies_0()[B
    .locals 1

    .prologue
    .line 610
    const/16 v0, 0xd1

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x2t
        0x3t
        0x4t
        0x3t
        0x5t
        0x3t
        0x6t
        0x1t
        0x0t
        0x7t
        0x7t
        0x3t
        0x8t
        0x3t
        0x9t
        0x9t
        0x3t
        0xbt
        0xbt
        0xct
        0xdt
        0xet
        0x3t
        0xft
        0xbt
        0xat
        0x10t
        0x10t
        0x11t
        0x12t
        0x10t
        0x3t
        0x13t
        0x13t
        0x14t
        0x15t
        0x13t
        0x3t
        0x16t
        0x16t
        0x3t
        0x15t
        0x15t
        0x18t
        0x3t
        0x19t
        0x3t
        0x1at
        0x3t
        0x1bt
        0x15t
        0x17t
        0x1ct
        0x1dt
        0x1ct
        0x1ct
        0x1et
        0x1ft
        0x20t
        0x3t
        0x21t
        0x22t
        0x21t
        0x21t
        0xdt
        0x23t
        0xft
        0x3t
        0x22t
        0x22t
        0xct
        0x24t
        0x25t
        0x3t
        0xft
        0x22t
        0xat
        0x10t
        0x3t
        0x24t
        0x24t
        0xct
        0x3t
        0x26t
        0x3t
        0x3t
        0x24t
        0xat
        0x27t
        0x27t
        0x3t
        0x28t
        0x28t
        0x3t
        0xdt
        0xdt
        0xct
        0x3t
        0x29t
        0x3t
        0xft
        0xdt
        0xat
        0x2at
        0x2at
        0x3t
        0x2bt
        0x2bt
        0x3t
        0x1ct
        0x3t
        0x2ct
        0x2ct
        0x3t
        0x2dt
        0x2dt
        0x3t
        0x2ft
        0x2ft
        0x30t
        0x31t
        0x32t
        0x3t
        0x33t
        0x34t
        0x35t
        0x2ft
        0x2et
        0x36t
        0x37t
        0x36t
        0x36t
        0x38t
        0x39t
        0x3at
        0x3t
        0x3bt
        0x3ct
        0x3bt
        0x3bt
        0x31t
        0x3dt
        0x34t
        0x3t
        0x3ct
        0x3ct
        0x30t
        0x3et
        0x3ft
        0x3t
        0x33t
        0x34t
        0x35t
        0x3ct
        0x2et
        0x36t
        0x3t
        0x3et
        0x3et
        0x30t
        0x3t
        0x40t
        0x3t
        0x33t
        0x3t
        0x35t
        0x3et
        0x2et
        0x41t
        0x41t
        0x3t
        0x42t
        0x42t
        0x3t
        0x31t
        0x31t
        0x30t
        0x3t
        0x43t
        0x3t
        0x33t
        0x34t
        0x35t
        0x31t
        0x2et
        0x44t
        0x44t
        0x3t
        0x45t
        0x45t
        0x3t
        0x46t
        0x46t
        0x3t
        0x8t
        0x8t
        0x47t
        0x8t
        0x3t
        0x48t
        0x48t
        0x49t
        0x48t
        0x3t
        0x3t
        0x3t
        0x0t
    .end array-data
.end method

.method private static init__json_key_offsets_0()[S
    .locals 1

    .prologue
    .line 570
    const/16 v0, 0x27

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 2
        0x0s
        0x0s
        0xbs
        0xds
        0xes
        0x10s
        0x19s
        0x1fs
        0x25s
        0x27s
        0x32s
        0x39s
        0x40s
        0x49s
        0x4as
        0x53s
        0x55s
        0x57s
        0x60s
        0x62s
        0x64s
        0x65s
        0x67s
        0x69s
        0x74s
        0x7bs
        0x82s
        0x8ds
        0x8es
        0x99s
        0x9bs
        0x9ds
        0xa8s
        0xaas
        0xacs
        0xaes
        0xb3s
        0xb8s
        0xb8s
    .end array-data
.end method

.method private static init__json_range_lengths_0()[B
    .locals 1

    .prologue
    .line 596
    const/16 v0, 0x27

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method private static init__json_single_lengths_0()[B
    .locals 1

    .prologue
    .line 589
    const/16 v0, 0x27

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x9t
        0x2t
        0x1t
        0x2t
        0x7t
        0x4t
        0x4t
        0x2t
        0x9t
        0x7t
        0x7t
        0x7t
        0x1t
        0x7t
        0x2t
        0x2t
        0x7t
        0x2t
        0x2t
        0x1t
        0x2t
        0x2t
        0x9t
        0x7t
        0x7t
        0x9t
        0x1t
        0x9t
        0x2t
        0x2t
        0x9t
        0x2t
        0x2t
        0x2t
        0x3t
        0x3t
        0x0t
        0x0t
    .end array-data
.end method

.method private static init__json_trans_actions_0()[B
    .locals 1

    .prologue
    .line 630
    const/16 v0, 0x4a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0xdt
        0x0t
        0xft
        0x0t
        0x0t
        0x7t
        0x3t
        0xbt
        0x1t
        0xbt
        0x11t
        0x0t
        0x14t
        0x0t
        0x0t
        0x5t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0xbt
        0xdt
        0xft
        0x0t
        0x7t
        0x3t
        0x1t
        0x1t
        0x1t
        0x1t
        0x17t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xbt
        0xbt
        0x0t
        0xbt
        0xbt
        0xbt
        0xbt
        0xdt
        0x0t
        0xft
        0x0t
        0x0t
        0x7t
        0x9t
        0x3t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1at
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xbt
        0xbt
        0x0t
        0xbt
        0xbt
        0xbt
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method private static init__json_trans_keys_0()[C
    .locals 1

    .prologue
    .line 577
    const/16 v0, 0xb9

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 2
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x9s
        0xas
        0x2as
        0x2fs
        0x22s
        0x2as
        0x2fs
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x7ds
        0x9s
        0xas
        0xds
        0x20s
        0x2fs
        0x3as
        0x9s
        0xas
        0xds
        0x20s
        0x2fs
        0x3as
        0x9s
        0xas
        0x2as
        0x2fs
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x9s
        0xas
        0x9s
        0xas
        0xds
        0x20s
        0x2cs
        0x2fs
        0x7ds
        0x9s
        0xas
        0xds
        0x20s
        0x2cs
        0x2fs
        0x7ds
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x7ds
        0x9s
        0xas
        0x22s
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x7ds
        0x9s
        0xas
        0x2as
        0x2fs
        0x2as
        0x2fs
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x7ds
        0x9s
        0xas
        0x2as
        0x2fs
        0x2as
        0x2fs
        0x22s
        0x2as
        0x2fs
        0x2as
        0x2fs
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x9s
        0xas
        0x9s
        0xas
        0xds
        0x20s
        0x2cs
        0x2fs
        0x5ds
        0x9s
        0xas
        0xds
        0x20s
        0x2cs
        0x2fs
        0x5ds
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x9s
        0xas
        0x22s
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x9s
        0xas
        0x2as
        0x2fs
        0x2as
        0x2fs
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x9s
        0xas
        0x2as
        0x2fs
        0x2as
        0x2fs
        0x2as
        0x2fs
        0xds
        0x20s
        0x2fs
        0x9s
        0xas
        0xds
        0x20s
        0x2fs
        0x9s
        0xas
        0x0s
    .end array-data
.end method

.method private static init__json_trans_targs_0()[B
    .locals 1

    .prologue
    .line 622
    const/16 v0, 0x4a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x23t
        0x1t
        0x3t
        0x0t
        0x4t
        0x24t
        0x24t
        0x24t
        0x24t
        0x1t
        0x6t
        0x5t
        0xdt
        0x11t
        0x16t
        0x25t
        0x7t
        0x8t
        0x9t
        0x7t
        0x8t
        0x9t
        0x7t
        0xat
        0x14t
        0x15t
        0xbt
        0xbt
        0xbt
        0xct
        0x11t
        0x13t
        0x25t
        0xbt
        0xct
        0x13t
        0xet
        0x10t
        0xft
        0xet
        0xct
        0x12t
        0x11t
        0xbt
        0x9t
        0x5t
        0x18t
        0x17t
        0x1bt
        0x1ft
        0x22t
        0x19t
        0x26t
        0x19t
        0x19t
        0x1at
        0x1ft
        0x21t
        0x26t
        0x19t
        0x1at
        0x21t
        0x1ct
        0x1et
        0x1dt
        0x1ct
        0x1at
        0x20t
        0x1ft
        0x19t
        0x17t
        0x2t
        0x24t
        0x2t
    .end array-data
.end method

.method private unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 714
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 715
    .local v4, "length":I
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v5, v4, 0x10

    invoke-direct {v0, v5}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 716
    .local v0, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 717
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 718
    .local v1, "c":C
    const/16 v5, 0x5c

    if-eq v1, v5, :cond_0

    .line 719
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move v3, v2

    .line 720
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 722
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_0
    if-ne v2, v4, :cond_1

    .line 754
    .end local v1    # "c":C
    :goto_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 723
    .restart local v1    # "c":C
    :cond_1
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 724
    const/16 v5, 0x75

    if-ne v1, v5, :cond_2

    .line 725
    add-int/lit8 v5, v3, 0x4

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append([C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 726
    add-int/lit8 v2, v3, 0x4

    .end local v3    # "i":I
    .restart local v2    # "i":I
    move v3, v2

    .line 727
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 729
    :cond_2
    sparse-switch v1, :sswitch_data_0

    .line 750
    new-instance v5, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal escaped character: \\"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 735
    :sswitch_0
    const/16 v1, 0x8

    .line 752
    :goto_2
    :sswitch_1
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_0

    .line 738
    :sswitch_2
    const/16 v1, 0xc

    .line 739
    goto :goto_2

    .line 741
    :sswitch_3
    const/16 v1, 0xa

    .line 742
    goto :goto_2

    .line 744
    :sswitch_4
    const/16 v1, 0xd

    .line 745
    goto :goto_2

    .line 747
    :sswitch_5
    const/16 v1, 0x9

    .line 748
    goto :goto_2

    .end local v1    # "c":C
    :cond_3
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 729
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_1
        0x2f -> :sswitch_1
        0x5c -> :sswitch_1
        0x62 -> :sswitch_0
        0x66 -> :sswitch_2
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method protected bool(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 710
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-direct {v0, p2}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Z)V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->addChild(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 711
    return-void
.end method

.method protected number(Ljava/lang/String;DLjava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D
    .param p4, "stringValue"    # Ljava/lang/String;

    .prologue
    .line 702
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-direct {v0, p2, p3, p4}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(DLjava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->addChild(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 703
    return-void
.end method

.method protected number(Ljava/lang/String;JLjava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "stringValue"    # Ljava/lang/String;

    .prologue
    .line 706
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-direct {v0, p2, p3, p4}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(JLjava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->addChild(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 707
    return-void
.end method

.method public parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 4
    .param p1, "file"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 75
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/files/FileHandle;->reader(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/io/Reader;)Lcom/badlogic/gdx/utils/JsonValue;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parse(Ljava/io/InputStream;)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 3
    .param p1, "input"    # Ljava/io/InputStream;

    .prologue
    .line 65
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/io/Reader;)Lcom/badlogic/gdx/utils/JsonValue;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 69
    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public parse(Ljava/io/Reader;)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 8
    .param p1, "reader"    # Ljava/io/Reader;

    .prologue
    .line 43
    const/16 v5, 0x400

    :try_start_0
    new-array v0, v5, [C

    .line 44
    .local v0, "data":[C
    const/4 v4, 0x0

    .line 46
    .local v4, "offset":I
    :goto_0
    array-length v5, v0

    sub-int/2addr v5, v4

    invoke-virtual {p1, v0, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v2

    .line 47
    .local v2, "length":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    .line 55
    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5, v4}, Lcom/badlogic/gdx/utils/JsonReader;->parse([CII)Lcom/badlogic/gdx/utils/JsonValue;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 59
    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v5

    .line 48
    :cond_0
    if-nez v2, :cond_1

    .line 49
    :try_start_1
    array-length v5, v0

    mul-int/lit8 v5, v5, 0x2

    new-array v3, v5, [C

    .line 50
    .local v3, "newData":[C
    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v7, v0

    invoke-static {v0, v5, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    move-object v0, v3

    .line 52
    goto :goto_0

    .line 53
    .end local v3    # "newData":[C
    :cond_1
    add-int/2addr v4, v2

    goto :goto_0

    .line 56
    .end local v0    # "data":[C
    .end local v2    # "length":I
    .end local v4    # "offset":I
    :catch_0
    move-exception v1

    .line 57
    .local v1, "ex":Ljava/io/IOException;
    :try_start_2
    new-instance v5, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v5, v1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v5
.end method

.method public parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 3
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 38
    .local v0, "data":[C
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonReader;->parse([CII)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    return-object v1
.end method

.method public parse([CII)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 53
    .param p1, "data"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 82
    move/from16 v35, p2

    .local v35, "p":I
    move/from16 v38, p3

    .local v38, "pe":I
    move/from16 v27, v38

    .local v27, "eof":I
    const/16 v45, 0x0

    .line 83
    .local v45, "top":I
    const/16 v48, 0x4

    move/from16 v0, v48

    new-array v0, v0, [I

    move-object/from16 v41, v0

    .line 85
    .local v41, "stack":[I
    const/16 v40, 0x0

    .line 86
    .local v40, "s":I
    new-instance v32, Lcom/badlogic/gdx/utils/Array;

    const/16 v48, 0x8

    move-object/from16 v0, v32

    move/from16 v1, v48

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    .line 87
    .local v32, "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    const/16 v33, 0x0

    .local v33, "needsUnescape":Z
    const/16 v43, 0x0

    .local v43, "stringIsName":Z
    const/16 v44, 0x0

    .line 88
    .local v44, "stringIsUnquoted":Z
    const/16 v37, 0x0

    .line 90
    .local v37, "parseRuntimeEx":Ljava/lang/RuntimeException;
    const/16 v25, 0x0

    .line 91
    .local v25, "debug":Z
    if-eqz v25, :cond_0

    sget-object v48, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual/range {v48 .. v48}, Ljava/io/PrintStream;->println()V

    .line 97
    :cond_0
    const/16 v24, 0x1

    .line 98
    .local v24, "cs":I
    const/16 v45, 0x0

    .line 104
    const/16 v19, 0x0

    .line 108
    .local v19, "_trans":I
    const/4 v12, 0x0

    .local v12, "_goto_targ":I
    move/from16 v46, v45

    .line 112
    .end local v45    # "top":I
    .local v46, "top":I
    :goto_0
    packed-switch v12, :pswitch_data_0

    :cond_1
    :pswitch_0
    move/from16 v45, v46

    .line 538
    .end local v46    # "top":I
    .restart local v45    # "top":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonReader;->root:Lcom/badlogic/gdx/utils/JsonValue;

    move-object/from16 v39, v0

    .line 539
    .local v39, "root":Lcom/badlogic/gdx/utils/JsonValue;
    const/16 v48, 0x0

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/badlogic/gdx/utils/JsonReader;->root:Lcom/badlogic/gdx/utils/JsonValue;

    .line 540
    const/16 v48, 0x0

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonReader;->lastChild:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 543
    move/from16 v0, v35

    move/from16 v1, v38

    if-ge v0, v1, :cond_49

    .line 544
    const/16 v30, 0x1

    .line 545
    .local v30, "lineNumber":I
    const/16 v29, 0x0

    .local v29, "i":I
    :goto_2
    move/from16 v0, v29

    move/from16 v1, v35

    if-ge v0, v1, :cond_48

    .line 546
    aget-char v48, p1, v29

    const/16 v49, 0xa

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_2

    add-int/lit8 v30, v30, 0x1

    .line 545
    :cond_2
    add-int/lit8 v29, v29, 0x1

    goto :goto_2

    .line 114
    .end local v29    # "i":I
    .end local v30    # "lineNumber":I
    .end local v39    # "root":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v45    # "top":I
    .restart local v46    # "top":I
    :pswitch_1
    move/from16 v0, v35

    move/from16 v1, v38

    if-ne v0, v1, :cond_3

    .line 115
    const/4 v12, 0x4

    .line 116
    goto :goto_0

    .line 118
    :cond_3
    if-nez v24, :cond_4

    .line 119
    const/4 v12, 0x5

    .line 120
    goto :goto_0

    .line 125
    :cond_4
    :pswitch_2
    :try_start_0
    sget-object v48, Lcom/badlogic/gdx/utils/JsonReader;->_json_key_offsets:[S

    aget-short v13, v48, v24

    .line 126
    .local v13, "_keys":I
    sget-object v48, Lcom/badlogic/gdx/utils/JsonReader;->_json_index_offsets:[S

    aget-short v19, v48, v24

    .line 127
    sget-object v48, Lcom/badlogic/gdx/utils/JsonReader;->_json_single_lengths:[B

    aget-byte v14, v48, v24

    .line 128
    .local v14, "_klen":I
    if-lez v14, :cond_5

    .line 129
    move v15, v13

    .line 131
    .local v15, "_lower":I
    add-int v48, v13, v14

    add-int/lit8 v20, v48, -0x1

    .line 133
    .local v20, "_upper":I
    :goto_3
    move/from16 v0, v20

    if-ge v0, v15, :cond_8

    .line 145
    add-int/2addr v13, v14

    .line 146
    add-int v19, v19, v14

    .line 149
    .end local v15    # "_lower":I
    .end local v20    # "_upper":I
    :cond_5
    sget-object v48, Lcom/badlogic/gdx/utils/JsonReader;->_json_range_lengths:[B

    aget-byte v14, v48, v24

    .line 150
    if-lez v14, :cond_6

    .line 151
    move v15, v13

    .line 153
    .restart local v15    # "_lower":I
    shl-int/lit8 v48, v14, 0x1

    add-int v48, v48, v13

    add-int/lit8 v20, v48, -0x2

    .line 155
    .restart local v20    # "_upper":I
    :goto_4
    move/from16 v0, v20

    if-ge v0, v15, :cond_b

    .line 167
    add-int v19, v19, v14

    .line 171
    .end local v15    # "_lower":I
    .end local v20    # "_upper":I
    :cond_6
    :goto_5
    sget-object v48, Lcom/badlogic/gdx/utils/JsonReader;->_json_indicies:[B

    aget-byte v19, v48, v19

    .line 172
    sget-object v48, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_targs:[B

    aget-byte v24, v48, v19

    .line 174
    sget-object v48, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_actions:[B

    aget-byte v48, v48, v19

    if-eqz v48, :cond_36

    .line 175
    sget-object v48, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_actions:[B

    aget-byte v10, v48, v19

    .line 176
    .local v10, "_acts":I
    sget-object v48, Lcom/badlogic/gdx/utils/JsonReader;->_json_actions:[B

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "_acts":I
    .local v11, "_acts":I
    aget-byte v17, v48, v10
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    .local v17, "_nacts":I
    move/from16 v18, v17

    .end local v17    # "_nacts":I
    .local v18, "_nacts":I
    move/from16 v36, v35

    .line 177
    .end local v35    # "p":I
    .local v36, "p":I
    :goto_6
    add-int/lit8 v17, v18, -0x1

    .end local v18    # "_nacts":I
    .restart local v17    # "_nacts":I
    if-lez v18, :cond_35

    .line 178
    :try_start_1
    sget-object v48, Lcom/badlogic/gdx/utils/JsonReader;->_json_actions:[B

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "_acts":I
    .restart local v10    # "_acts":I
    aget-byte v48, v48, v11
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    packed-switch v48, :pswitch_data_1

    move/from16 v35, v36

    .end local v36    # "p":I
    .restart local v35    # "p":I
    :cond_7
    :goto_7
    move/from16 v18, v17

    .end local v17    # "_nacts":I
    .restart local v18    # "_nacts":I
    move v11, v10

    .end local v10    # "_acts":I
    .restart local v11    # "_acts":I
    move/from16 v36, v35

    .line 423
    .end local v35    # "p":I
    .restart local v36    # "p":I
    goto :goto_6

    .line 135
    .end local v11    # "_acts":I
    .end local v18    # "_nacts":I
    .end local v36    # "p":I
    .restart local v15    # "_lower":I
    .restart local v20    # "_upper":I
    .restart local v35    # "p":I
    :cond_8
    sub-int v48, v20, v15

    shr-int/lit8 v48, v48, 0x1

    add-int v16, v15, v48

    .line 136
    .local v16, "_mid":I
    :try_start_2
    aget-char v48, p1, v35

    sget-object v49, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_keys:[C

    aget-char v49, v49, v16

    move/from16 v0, v48

    move/from16 v1, v49

    if-ge v0, v1, :cond_9

    .line 137
    add-int/lit8 v20, v16, -0x1

    goto :goto_3

    .line 138
    :cond_9
    aget-char v48, p1, v35

    sget-object v49, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_keys:[C

    aget-char v49, v49, v16

    move/from16 v0, v48

    move/from16 v1, v49

    if-le v0, v1, :cond_a

    .line 139
    add-int/lit8 v15, v16, 0x1

    goto :goto_3

    .line 141
    :cond_a
    sub-int v48, v16, v13

    add-int v19, v19, v48

    .line 142
    goto :goto_5

    .line 157
    .end local v16    # "_mid":I
    :cond_b
    sub-int v48, v20, v15

    shr-int/lit8 v48, v48, 0x1

    and-int/lit8 v48, v48, -0x2

    add-int v16, v15, v48

    .line 158
    .restart local v16    # "_mid":I
    aget-char v48, p1, v35

    sget-object v49, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_keys:[C

    aget-char v49, v49, v16

    move/from16 v0, v48

    move/from16 v1, v49

    if-ge v0, v1, :cond_c

    .line 159
    add-int/lit8 v20, v16, -0x2

    goto :goto_4

    .line 160
    :cond_c
    aget-char v48, p1, v35

    sget-object v49, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_keys:[C

    add-int/lit8 v50, v16, 0x1

    aget-char v49, v49, v50
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    move/from16 v0, v48

    move/from16 v1, v49

    if-le v0, v1, :cond_d

    .line 161
    add-int/lit8 v15, v16, 0x2

    goto/16 :goto_4

    .line 163
    :cond_d
    sub-int v48, v16, v13

    shr-int/lit8 v48, v48, 0x1

    add-int v19, v19, v48

    .line 164
    goto/16 :goto_5

    .line 182
    .end local v15    # "_lower":I
    .end local v16    # "_mid":I
    .end local v20    # "_upper":I
    .end local v35    # "p":I
    .restart local v10    # "_acts":I
    .restart local v17    # "_nacts":I
    .restart local v36    # "p":I
    :pswitch_3
    const/16 v43, 0x1

    move/from16 v35, v36

    .line 184
    .end local v36    # "p":I
    .restart local v35    # "p":I
    goto :goto_7

    .line 188
    .end local v35    # "p":I
    .restart local v36    # "p":I
    :pswitch_4
    :try_start_3
    new-instance v47, Ljava/lang/String;

    sub-int v48, v36, v40

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move/from16 v2, v40

    move/from16 v3, v48

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 189
    .local v47, "value":Ljava/lang/String;
    if-eqz v33, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/JsonReader;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 191
    :cond_e
    if-eqz v43, :cond_10

    .line 192
    const/16 v43, 0x0

    .line 193
    if-eqz v25, :cond_f

    sget-object v48, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "name: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 194
    :cond_f
    move-object/from16 v0, v32

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 258
    :goto_8
    const/16 v44, 0x0

    .line 259
    move/from16 v40, v36

    move/from16 v35, v36

    .line 261
    .end local v36    # "p":I
    .restart local v35    # "p":I
    goto/16 :goto_7

    .line 196
    .end local v35    # "p":I
    .restart local v36    # "p":I
    :cond_10
    move-object/from16 v0, v32

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    move/from16 v48, v0

    if-lez v48, :cond_12

    invoke-virtual/range {v32 .. v32}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/String;

    move-object/from16 v31, v48

    .line 197
    .local v31, "name":Ljava/lang/String;
    :goto_9
    if-eqz v44, :cond_19

    .line 198
    const-string v48, "true"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_13

    .line 199
    if-eqz v25, :cond_11

    sget-object v48, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "boolean: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "=true"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 200
    :cond_11
    const/16 v48, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonReader;->bool(Ljava/lang/String;Z)V

    goto :goto_8

    .line 534
    .end local v10    # "_acts":I
    .end local v31    # "name":Ljava/lang/String;
    .end local v47    # "value":Ljava/lang/String;
    :catch_0
    move-exception v28

    move/from16 v45, v46

    .end local v46    # "top":I
    .restart local v45    # "top":I
    move/from16 v35, v36

    .line 535
    .end local v13    # "_keys":I
    .end local v14    # "_klen":I
    .end local v17    # "_nacts":I
    .end local v36    # "p":I
    .local v28, "ex":Ljava/lang/RuntimeException;
    .restart local v35    # "p":I
    :goto_a
    move-object/from16 v37, v28

    goto/16 :goto_1

    .line 196
    .end local v28    # "ex":Ljava/lang/RuntimeException;
    .end local v35    # "p":I
    .end local v45    # "top":I
    .restart local v10    # "_acts":I
    .restart local v13    # "_keys":I
    .restart local v14    # "_klen":I
    .restart local v17    # "_nacts":I
    .restart local v36    # "p":I
    .restart local v46    # "top":I
    .restart local v47    # "value":Ljava/lang/String;
    :cond_12
    const/16 v31, 0x0

    goto :goto_9

    .line 202
    .restart local v31    # "name":Ljava/lang/String;
    :cond_13
    const-string v48, "false"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_15

    .line 203
    if-eqz v25, :cond_14

    sget-object v48, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "boolean: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "=false"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 204
    :cond_14
    const/16 v48, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonReader;->bool(Ljava/lang/String;Z)V

    goto/16 :goto_8

    .line 206
    :cond_15
    const-string v48, "null"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_16

    .line 207
    const/16 v48, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonReader;->string(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 210
    :cond_16
    const/16 v22, 0x0

    .local v22, "couldBeDouble":Z
    const/16 v23, 0x1

    .line 212
    .local v23, "couldBeLong":Z
    move/from16 v29, v40

    .restart local v29    # "i":I
    :goto_b
    move/from16 v0, v29

    move/from16 v1, v36

    if-ge v0, v1, :cond_17

    .line 213
    aget-char v48, p1, v29
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    sparse-switch v48, :sswitch_data_0

    .line 234
    const/16 v22, 0x0

    .line 235
    const/16 v23, 0x0

    .line 239
    :cond_17
    if-eqz v22, :cond_1b

    .line 241
    if-eqz v25, :cond_18

    :try_start_4
    sget-object v48, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "double: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-static/range {v47 .. v47}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v50

    invoke-virtual/range {v49 .. v51}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 242
    :cond_18
    invoke-static/range {v47 .. v47}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v48

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-wide/from16 v2, v48

    move-object/from16 v4, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/utils/JsonReader;->number(Ljava/lang/String;DLjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_8

    .line 244
    :catch_1
    move-exception v48

    .line 255
    .end local v22    # "couldBeDouble":Z
    .end local v23    # "couldBeLong":Z
    .end local v29    # "i":I
    :cond_19
    :goto_c
    if-eqz v25, :cond_1a

    :try_start_5
    sget-object v48, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "string: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 256
    :cond_1a
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonReader;->string(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 230
    .restart local v22    # "couldBeDouble":Z
    .restart local v23    # "couldBeLong":Z
    .restart local v29    # "i":I
    :sswitch_0
    const/16 v22, 0x1

    .line 231
    const/16 v23, 0x0

    .line 212
    :sswitch_1
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_b

    .line 246
    :cond_1b
    if-eqz v23, :cond_19

    .line 247
    if-eqz v25, :cond_1c

    sget-object v48, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "double: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-static/range {v47 .. v47}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v50

    invoke-virtual/range {v49 .. v51}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 249
    :cond_1c
    :try_start_6
    invoke-static/range {v47 .. v47}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v48

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-wide/from16 v2, v48

    move-object/from16 v4, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/utils/JsonReader;->number(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_8

    .line 251
    :catch_2
    move-exception v48

    goto :goto_c

    .line 265
    .end local v22    # "couldBeDouble":Z
    .end local v23    # "couldBeLong":Z
    .end local v29    # "i":I
    .end local v31    # "name":Ljava/lang/String;
    .end local v47    # "value":Ljava/lang/String;
    :pswitch_5
    :try_start_7
    move-object/from16 v0, v32

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    move/from16 v48, v0

    if-lez v48, :cond_1f

    invoke-virtual/range {v32 .. v32}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/String;

    move-object/from16 v31, v48

    .line 266
    .restart local v31    # "name":Ljava/lang/String;
    :goto_d
    if-eqz v25, :cond_1d

    sget-object v48, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "startObject: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 267
    :cond_1d
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonReader;->startObject(Ljava/lang/String;)V

    .line 269
    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v48, v0

    move/from16 v0, v46

    move/from16 v1, v48

    if-ne v0, v1, :cond_1e

    .line 270
    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v48, v0

    mul-int/lit8 v48, v48, 0x2

    move/from16 v0, v48

    new-array v0, v0, [I

    move-object/from16 v34, v0

    .line 271
    .local v34, "newStack":[I
    const/16 v48, 0x0

    const/16 v49, 0x0

    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v50, v0

    move-object/from16 v0, v41

    move/from16 v1, v48

    move-object/from16 v2, v34

    move/from16 v3, v49

    move/from16 v4, v50

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    .line 272
    move-object/from16 v41, v34

    .line 275
    .end local v34    # "newStack":[I
    :cond_1e
    add-int/lit8 v45, v46, 0x1

    .end local v46    # "top":I
    .restart local v45    # "top":I
    :try_start_8
    aput v24, v41, v46
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_6

    .line 276
    const/16 v24, 0x5

    .line 277
    const/4 v12, 0x2

    move/from16 v46, v45

    .end local v45    # "top":I
    .restart local v46    # "top":I
    move/from16 v35, v36

    .line 278
    .end local v36    # "p":I
    .restart local v35    # "p":I
    goto/16 :goto_0

    .line 265
    .end local v31    # "name":Ljava/lang/String;
    .end local v35    # "p":I
    .restart local v36    # "p":I
    :cond_1f
    const/16 v31, 0x0

    goto :goto_d

    .line 286
    :pswitch_6
    if-eqz v25, :cond_20

    :try_start_9
    sget-object v48, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v49, "endObject"

    invoke-virtual/range {v48 .. v49}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 287
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/JsonReader;->pop()V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    .line 289
    add-int/lit8 v45, v46, -0x1

    .end local v46    # "top":I
    .restart local v45    # "top":I
    :try_start_a
    aget v24, v41, v45
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_6

    .line 290
    const/4 v12, 0x2

    move/from16 v46, v45

    .end local v45    # "top":I
    .restart local v46    # "top":I
    move/from16 v35, v36

    .line 291
    .end local v36    # "p":I
    .restart local v35    # "p":I
    goto/16 :goto_0

    .line 298
    .end local v35    # "p":I
    .restart local v36    # "p":I
    :pswitch_7
    :try_start_b
    move-object/from16 v0, v32

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    move/from16 v48, v0

    if-lez v48, :cond_23

    invoke-virtual/range {v32 .. v32}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/String;

    move-object/from16 v31, v48

    .line 299
    .restart local v31    # "name":Ljava/lang/String;
    :goto_e
    if-eqz v25, :cond_21

    sget-object v48, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "startArray: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 300
    :cond_21
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonReader;->startArray(Ljava/lang/String;)V

    .line 302
    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v48, v0

    move/from16 v0, v46

    move/from16 v1, v48

    if-ne v0, v1, :cond_22

    .line 303
    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v48, v0

    mul-int/lit8 v48, v48, 0x2

    move/from16 v0, v48

    new-array v0, v0, [I

    move-object/from16 v34, v0

    .line 304
    .restart local v34    # "newStack":[I
    const/16 v48, 0x0

    const/16 v49, 0x0

    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v50, v0

    move-object/from16 v0, v41

    move/from16 v1, v48

    move-object/from16 v2, v34

    move/from16 v3, v49

    move/from16 v4, v50

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_0

    .line 305
    move-object/from16 v41, v34

    .line 308
    .end local v34    # "newStack":[I
    :cond_22
    add-int/lit8 v45, v46, 0x1

    .end local v46    # "top":I
    .restart local v45    # "top":I
    :try_start_c
    aput v24, v41, v46
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_6

    .line 309
    const/16 v24, 0x17

    .line 310
    const/4 v12, 0x2

    move/from16 v46, v45

    .end local v45    # "top":I
    .restart local v46    # "top":I
    move/from16 v35, v36

    .line 311
    .end local v36    # "p":I
    .restart local v35    # "p":I
    goto/16 :goto_0

    .line 298
    .end local v31    # "name":Ljava/lang/String;
    .end local v35    # "p":I
    .restart local v36    # "p":I
    :cond_23
    const/16 v31, 0x0

    goto :goto_e

    .line 319
    :pswitch_8
    if-eqz v25, :cond_24

    :try_start_d
    sget-object v48, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v49, "endArray"

    invoke-virtual/range {v48 .. v49}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 320
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/JsonReader;->pop()V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_0

    .line 322
    add-int/lit8 v45, v46, -0x1

    .end local v46    # "top":I
    .restart local v45    # "top":I
    :try_start_e
    aget v24, v41, v45
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_6

    .line 323
    const/4 v12, 0x2

    move/from16 v46, v45

    .end local v45    # "top":I
    .restart local v46    # "top":I
    move/from16 v35, v36

    .line 324
    .end local v36    # "p":I
    .restart local v35    # "p":I
    goto/16 :goto_0

    .line 331
    .end local v35    # "p":I
    .restart local v36    # "p":I
    :pswitch_9
    add-int/lit8 v42, v36, -0x1

    .line 332
    .local v42, "start":I
    add-int/lit8 v35, v36, 0x1

    .end local v36    # "p":I
    .restart local v35    # "p":I
    :try_start_f
    aget-char v48, p1, v36

    const/16 v49, 0x2f

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_26

    .line 333
    :goto_f
    move/from16 v0, v35

    move/from16 v1, v27

    if-eq v0, v1, :cond_25

    aget-char v48, p1, v35

    const/16 v49, 0xa

    move/from16 v0, v48

    move/from16 v1, v49

    if-eq v0, v1, :cond_25

    .line 334
    add-int/lit8 v35, v35, 0x1

    goto :goto_f

    .line 335
    :cond_25
    add-int/lit8 v35, v35, -0x1

    .line 341
    :goto_10
    if-eqz v25, :cond_7

    sget-object v48, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "comment "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    new-instance v50, Ljava/lang/String;

    sub-int v51, v35, v42

    move-object/from16 v0, v50

    move-object/from16 v1, p1

    move/from16 v2, v42

    move/from16 v3, v51

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 534
    .end local v10    # "_acts":I
    .end local v13    # "_keys":I
    .end local v14    # "_klen":I
    .end local v17    # "_nacts":I
    .end local v42    # "start":I
    :catch_3
    move-exception v28

    move/from16 v45, v46

    .end local v46    # "top":I
    .restart local v45    # "top":I
    goto/16 :goto_a

    .line 337
    .end local v45    # "top":I
    .restart local v10    # "_acts":I
    .restart local v13    # "_keys":I
    .restart local v14    # "_klen":I
    .restart local v17    # "_nacts":I
    .restart local v42    # "start":I
    .restart local v46    # "top":I
    :cond_26
    :goto_11
    add-int/lit8 v48, v35, 0x1

    move/from16 v0, v48

    move/from16 v1, v27

    if-ge v0, v1, :cond_27

    aget-char v48, p1, v35

    const/16 v49, 0x2a

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_28

    :cond_27
    add-int/lit8 v48, v35, 0x1

    aget-char v48, p1, v48
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_3

    const/16 v49, 0x2f

    move/from16 v0, v48

    move/from16 v1, v49

    if-eq v0, v1, :cond_29

    .line 338
    :cond_28
    add-int/lit8 v35, v35, 0x1

    goto :goto_11

    .line 339
    :cond_29
    add-int/lit8 v35, v35, 0x1

    goto :goto_10

    .line 347
    .end local v35    # "p":I
    .end local v42    # "start":I
    .restart local v36    # "p":I
    :pswitch_a
    if-eqz v25, :cond_2a

    :try_start_10
    sget-object v48, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v49, "unquotedChars"

    invoke-virtual/range {v48 .. v49}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_0

    .line 348
    :cond_2a
    move/from16 v40, v36

    .line 349
    const/16 v33, 0x0

    .line 350
    const/16 v44, 0x1

    .line 351
    if-eqz v43, :cond_2f

    move/from16 v35, v36

    .line 354
    .end local v36    # "p":I
    .restart local v35    # "p":I
    :cond_2b
    :try_start_11
    aget-char v48, p1, v35

    sparse-switch v48, :sswitch_data_1

    .line 368
    :cond_2c
    :goto_12
    if-eqz v25, :cond_2d

    sget-object v48, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "unquotedChar (name): \'"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    aget-char v50, p1, v35

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "\'"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 369
    :cond_2d
    add-int/lit8 v35, v35, 0x1

    .line 370
    move/from16 v0, v35

    move/from16 v1, v27

    if-ne v0, v1, :cond_2b

    .line 396
    :cond_2e
    :goto_13
    :sswitch_2
    add-int/lit8 v35, v35, -0x1

    .line 397
    :goto_14
    aget-char v48, p1, v35

    const/16 v49, 0x20

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_7

    .line 398
    add-int/lit8 v35, v35, -0x1

    goto :goto_14

    .line 356
    :sswitch_3
    const/16 v33, 0x1

    .line 357
    goto :goto_12

    .line 359
    :sswitch_4
    add-int/lit8 v48, v35, 0x1

    move/from16 v0, v48

    move/from16 v1, v27

    if-eq v0, v1, :cond_2c

    .line 360
    add-int/lit8 v48, v35, 0x1

    aget-char v21, p1, v48

    .line 361
    .local v21, "c":C
    const/16 v48, 0x2f

    move/from16 v0, v21

    move/from16 v1, v48

    if-eq v0, v1, :cond_2e

    const/16 v48, 0x2a

    move/from16 v0, v21

    move/from16 v1, v48

    if-ne v0, v1, :cond_2c

    goto :goto_13

    .end local v21    # "c":C
    .end local v35    # "p":I
    .restart local v36    # "p":I
    :cond_2f
    move/from16 v35, v36

    .line 375
    .end local v36    # "p":I
    .restart local v35    # "p":I
    :cond_30
    aget-char v48, p1, v35

    sparse-switch v48, :sswitch_data_2

    .line 391
    :cond_31
    :goto_15
    if-eqz v25, :cond_32

    sget-object v48, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "unquotedChar (value): \'"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    aget-char v50, p1, v35

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "\'"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 392
    :cond_32
    add-int/lit8 v35, v35, 0x1

    .line 393
    move/from16 v0, v35

    move/from16 v1, v27

    if-ne v0, v1, :cond_30

    goto :goto_13

    .line 377
    :sswitch_5
    const/16 v33, 0x1

    .line 378
    goto :goto_15

    .line 380
    :sswitch_6
    add-int/lit8 v48, v35, 0x1

    move/from16 v0, v48

    move/from16 v1, v27

    if-eq v0, v1, :cond_31

    .line 381
    add-int/lit8 v48, v35, 0x1

    aget-char v21, p1, v48
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_3

    .line 382
    .restart local v21    # "c":C
    const/16 v48, 0x2f

    move/from16 v0, v21

    move/from16 v1, v48

    if-eq v0, v1, :cond_2e

    const/16 v48, 0x2a

    move/from16 v0, v21

    move/from16 v1, v48

    if-ne v0, v1, :cond_31

    goto :goto_13

    .line 404
    .end local v21    # "c":C
    .end local v35    # "p":I
    .restart local v36    # "p":I
    :pswitch_b
    if-eqz v25, :cond_33

    :try_start_12
    sget-object v48, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v49, "quotedChars"

    invoke-virtual/range {v48 .. v49}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_0

    .line 405
    :cond_33
    add-int/lit8 v35, v36, 0x1

    .end local v36    # "p":I
    .restart local v35    # "p":I
    move/from16 v40, v35

    .line 406
    const/16 v33, 0x0

    .line 409
    :cond_34
    :try_start_13
    aget-char v48, p1, v35

    sparse-switch v48, :sswitch_data_3

    .line 418
    :goto_16
    add-int/lit8 v35, v35, 0x1

    .line 419
    move/from16 v0, v35

    move/from16 v1, v27

    if-ne v0, v1, :cond_34

    .line 421
    :sswitch_7
    add-int/lit8 v35, v35, -0x1

    goto/16 :goto_7

    .line 411
    :sswitch_8
    const/16 v33, 0x1

    .line 412
    add-int/lit8 v35, v35, 0x1

    .line 413
    goto :goto_16

    .end local v10    # "_acts":I
    .end local v35    # "p":I
    .restart local v11    # "_acts":I
    .restart local v36    # "p":I
    :cond_35
    move/from16 v35, v36

    .line 430
    .end local v11    # "_acts":I
    .end local v13    # "_keys":I
    .end local v14    # "_klen":I
    .end local v17    # "_nacts":I
    .end local v36    # "p":I
    .restart local v35    # "p":I
    :cond_36
    :pswitch_c
    if-nez v24, :cond_37

    .line 431
    const/4 v12, 0x5

    .line 432
    goto/16 :goto_0

    .line 434
    :cond_37
    add-int/lit8 v35, v35, 0x1

    move/from16 v0, v35

    move/from16 v1, v38

    if-eq v0, v1, :cond_38

    .line 435
    const/4 v12, 0x1

    .line 436
    goto/16 :goto_0

    .line 439
    :cond_38
    :pswitch_d
    move/from16 v0, v35

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    .line 440
    sget-object v48, Lcom/badlogic/gdx/utils/JsonReader;->_json_eof_actions:[B

    aget-byte v6, v48, v24

    .line 441
    .local v6, "__acts":I
    sget-object v48, Lcom/badlogic/gdx/utils/JsonReader;->_json_actions:[B

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "__acts":I
    .local v7, "__acts":I
    aget-byte v8, v48, v6

    .local v8, "__nacts":I
    move v9, v8

    .line 442
    .end local v8    # "__nacts":I
    .local v9, "__nacts":I
    :goto_17
    add-int/lit8 v8, v9, -0x1

    .end local v9    # "__nacts":I
    .restart local v8    # "__nacts":I
    if-lez v9, :cond_1

    .line 443
    sget-object v48, Lcom/badlogic/gdx/utils/JsonReader;->_json_actions:[B

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "__acts":I
    .restart local v6    # "__acts":I
    aget-byte v48, v48, v7

    packed-switch v48, :pswitch_data_2

    :goto_18
    move v9, v8

    .end local v8    # "__nacts":I
    .restart local v9    # "__nacts":I
    move v7, v6

    .line 520
    .end local v6    # "__acts":I
    .restart local v7    # "__acts":I
    goto :goto_17

    .line 447
    .end local v7    # "__acts":I
    .end local v9    # "__nacts":I
    .restart local v6    # "__acts":I
    .restart local v8    # "__nacts":I
    :pswitch_e
    new-instance v47, Ljava/lang/String;

    sub-int v48, v35, v40

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move/from16 v2, v40

    move/from16 v3, v48

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 448
    .restart local v47    # "value":Ljava/lang/String;
    if-eqz v33, :cond_39

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/JsonReader;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 450
    :cond_39
    if-eqz v43, :cond_3b

    .line 451
    const/16 v43, 0x0

    .line 452
    if-eqz v25, :cond_3a

    sget-object v48, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "name: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 453
    :cond_3a
    move-object/from16 v0, v32

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 517
    :goto_19
    const/16 v44, 0x0

    .line 518
    move/from16 v40, v35

    goto :goto_18

    .line 455
    :cond_3b
    move-object/from16 v0, v32

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    move/from16 v48, v0

    if-lez v48, :cond_3d

    invoke-virtual/range {v32 .. v32}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/String;

    move-object/from16 v31, v48

    .line 456
    .restart local v31    # "name":Ljava/lang/String;
    :goto_1a
    if-eqz v44, :cond_44

    .line 457
    const-string v48, "true"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_3e

    .line 458
    if-eqz v25, :cond_3c

    sget-object v48, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "boolean: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "=true"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 459
    :cond_3c
    const/16 v48, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonReader;->bool(Ljava/lang/String;Z)V

    goto :goto_19

    .line 455
    .end local v31    # "name":Ljava/lang/String;
    :cond_3d
    const/16 v31, 0x0

    goto :goto_1a

    .line 461
    .restart local v31    # "name":Ljava/lang/String;
    :cond_3e
    const-string v48, "false"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_40

    .line 462
    if-eqz v25, :cond_3f

    sget-object v48, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "boolean: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "=false"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 463
    :cond_3f
    const/16 v48, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonReader;->bool(Ljava/lang/String;Z)V

    goto/16 :goto_19

    .line 465
    :cond_40
    const-string v48, "null"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_41

    .line 466
    const/16 v48, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonReader;->string(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_19

    .line 469
    :cond_41
    const/16 v22, 0x0

    .restart local v22    # "couldBeDouble":Z
    const/16 v23, 0x1

    .line 471
    .restart local v23    # "couldBeLong":Z
    move/from16 v29, v40

    .restart local v29    # "i":I
    :goto_1b
    move/from16 v0, v29

    move/from16 v1, v35

    if-ge v0, v1, :cond_42

    .line 472
    aget-char v48, p1, v29
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_3

    sparse-switch v48, :sswitch_data_4

    .line 493
    const/16 v22, 0x0

    .line 494
    const/16 v23, 0x0

    .line 498
    :cond_42
    if-eqz v22, :cond_46

    .line 500
    if-eqz v25, :cond_43

    :try_start_14
    sget-object v48, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "double: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-static/range {v47 .. v47}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v50

    invoke-virtual/range {v49 .. v51}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 501
    :cond_43
    invoke-static/range {v47 .. v47}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v48

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-wide/from16 v2, v48

    move-object/from16 v4, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/utils/JsonReader;->number(Ljava/lang/String;DLjava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_14} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_3

    goto/16 :goto_19

    .line 503
    :catch_4
    move-exception v48

    .line 514
    .end local v22    # "couldBeDouble":Z
    .end local v23    # "couldBeLong":Z
    .end local v29    # "i":I
    :cond_44
    :goto_1c
    if-eqz v25, :cond_45

    :try_start_15
    sget-object v48, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "string: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 515
    :cond_45
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonReader;->string(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_19

    .line 489
    .restart local v22    # "couldBeDouble":Z
    .restart local v23    # "couldBeLong":Z
    .restart local v29    # "i":I
    :sswitch_9
    const/16 v22, 0x1

    .line 490
    const/16 v23, 0x0

    .line 471
    :sswitch_a
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_1b

    .line 505
    :cond_46
    if-eqz v23, :cond_44

    .line 506
    if-eqz v25, :cond_47

    sget-object v48, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "double: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-static/range {v47 .. v47}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v50

    invoke-virtual/range {v49 .. v51}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_3

    .line 508
    :cond_47
    :try_start_16
    invoke-static/range {v47 .. v47}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v48

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-wide/from16 v2, v48

    move-object/from16 v4, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/utils/JsonReader;->number(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_16} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_3

    goto/16 :goto_19

    .line 510
    :catch_5
    move-exception v48

    goto :goto_1c

    .line 547
    .end local v6    # "__acts":I
    .end local v8    # "__nacts":I
    .end local v22    # "couldBeDouble":Z
    .end local v23    # "couldBeLong":Z
    .end local v31    # "name":Ljava/lang/String;
    .end local v46    # "top":I
    .end local v47    # "value":Ljava/lang/String;
    .restart local v30    # "lineNumber":I
    .restart local v39    # "root":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v45    # "top":I
    :cond_48
    new-instance v48, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Error parsing JSON on line "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, " near: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    new-instance v50, Ljava/lang/String;

    const/16 v51, 0x100

    sub-int v52, v38, v35

    invoke-static/range {v51 .. v52}, Ljava/lang/Math;->min(II)I

    move-result v51

    move-object/from16 v0, v50

    move-object/from16 v1, p1

    move/from16 v2, v35

    move/from16 v3, v51

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v48

    .line 549
    .end local v29    # "i":I
    .end local v30    # "lineNumber":I
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    move/from16 v48, v0

    if-eqz v48, :cond_4b

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/badlogic/gdx/utils/JsonValue;

    .line 551
    .local v26, "element":Lcom/badlogic/gdx/utils/JsonValue;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 552
    if-eqz v26, :cond_4a

    invoke-virtual/range {v26 .. v26}, Lcom/badlogic/gdx/utils/JsonValue;->isObject()Z

    move-result v48

    if-eqz v48, :cond_4a

    .line 553
    new-instance v48, Lcom/badlogic/gdx/utils/SerializationException;

    const-string v49, "Error parsing JSON, unmatched brace."

    invoke-direct/range {v48 .. v49}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v48

    .line 555
    :cond_4a
    new-instance v48, Lcom/badlogic/gdx/utils/SerializationException;

    const-string v49, "Error parsing JSON, unmatched bracket."

    invoke-direct/range {v48 .. v49}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v48

    .line 556
    .end local v26    # "element":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_4b
    if-eqz v37, :cond_4c

    .line 557
    new-instance v48, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Error parsing JSON: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    new-instance v50, Ljava/lang/String;

    move-object/from16 v0, v50

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v48

    .line 559
    :cond_4c
    return-object v39

    .line 534
    .end local v35    # "p":I
    .end local v39    # "root":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v10    # "_acts":I
    .restart local v13    # "_keys":I
    .restart local v14    # "_klen":I
    .restart local v17    # "_nacts":I
    .restart local v36    # "p":I
    :catch_6
    move-exception v28

    move/from16 v35, v36

    .end local v36    # "p":I
    .restart local v35    # "p":I
    goto/16 :goto_a

    .line 112
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_c
        :pswitch_0
        :pswitch_d
    .end packed-switch

    .line 178
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 213
    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_1
        0x2d -> :sswitch_1
        0x2e -> :sswitch_0
        0x30 -> :sswitch_1
        0x31 -> :sswitch_1
        0x32 -> :sswitch_1
        0x33 -> :sswitch_1
        0x34 -> :sswitch_1
        0x35 -> :sswitch_1
        0x36 -> :sswitch_1
        0x37 -> :sswitch_1
        0x38 -> :sswitch_1
        0x39 -> :sswitch_1
        0x45 -> :sswitch_0
        0x65 -> :sswitch_0
    .end sparse-switch

    .line 354
    :sswitch_data_1
    .sparse-switch
        0xa -> :sswitch_2
        0xd -> :sswitch_2
        0x2f -> :sswitch_4
        0x3a -> :sswitch_2
        0x5c -> :sswitch_3
    .end sparse-switch

    .line 375
    :sswitch_data_2
    .sparse-switch
        0xa -> :sswitch_2
        0xd -> :sswitch_2
        0x2c -> :sswitch_2
        0x2f -> :sswitch_6
        0x5c -> :sswitch_5
        0x5d -> :sswitch_2
        0x7d -> :sswitch_2
    .end sparse-switch

    .line 409
    :sswitch_data_3
    .sparse-switch
        0x22 -> :sswitch_7
        0x5c -> :sswitch_8
    .end sparse-switch

    .line 443
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_e
    .end packed-switch

    .line 472
    :sswitch_data_4
    .sparse-switch
        0x2b -> :sswitch_a
        0x2d -> :sswitch_a
        0x2e -> :sswitch_9
        0x30 -> :sswitch_a
        0x31 -> :sswitch_a
        0x32 -> :sswitch_a
        0x33 -> :sswitch_a
        0x34 -> :sswitch_a
        0x35 -> :sswitch_a
        0x36 -> :sswitch_a
        0x37 -> :sswitch_a
        0x38 -> :sswitch_a
        0x39 -> :sswitch_a
        0x45 -> :sswitch_9
        0x65 -> :sswitch_9
    .end sparse-switch
.end method

.method protected pop()V
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->root:Lcom/badlogic/gdx/utils/JsonValue;

    .line 693
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    iget v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->lastChild:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/JsonValue;

    :goto_0
    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    .line 695
    return-void

    .line 694
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected startArray(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 685
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Lcom/badlogic/gdx/utils/JsonValue$ValueType;)V

    .line 686
    .local v0, "value":Lcom/badlogic/gdx/utils/JsonValue;
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->addChild(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 687
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 688
    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    .line 689
    return-void
.end method

.method protected startObject(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 678
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->object:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Lcom/badlogic/gdx/utils/JsonValue$ValueType;)V

    .line 679
    .local v0, "value":Lcom/badlogic/gdx/utils/JsonValue;
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->addChild(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 680
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 681
    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    .line 682
    return-void
.end method

.method protected string(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 698
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-direct {v0, p2}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->addChild(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 699
    return-void
.end method
