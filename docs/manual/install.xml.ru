<?xml version='1.0' encoding='KOI8-R' ?>
<!DOCTYPE manualpage SYSTEM "./style/manualpage.dtd">
<?xml-stylesheet type="text/xsl" href="./style/manual.ru.xsl"?>
<!-- English Revision: 1.11.2.3 (outdated: 1.11.2.14) -->

<!--
 Copyright 2002-2004 The Apache Software Foundation

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
-->

<!--***************************************************-->
<!-- Translator: Ilia Soldis (soldis@infolio.ru)       -->
<!-- Reviewers:                                        -->
<!--             Ivan Shvedov (ivan@tversu.ru)         -->
<!--             Arthur Reznikov (art@altair.tversu.ru)-->
<!--***************************************************-->

<manualpage metafile="install.xml.meta">

  <title>�������������� � ���������</title>

<summary>

    <p>���� �������� �������� ������� �������������� � ��������� �������
    Apache ������ �� UNIX � UNIX-�������� ��������. ���� �� ������ ����������
    ������ ��� Windows, �� ��� ���������� �������� �������� <a
    href="platform/windows.html">"������������� Apache ��� Microsoft Windows"</a>.
    ����������, ���������� ��������� ��������, ���������� � ���������
    <a href="platform/">"���������"</a>.</p>

    <p>����� ���������������� � ��������� ������� ��������� ���������� �� ���, ������� ����
    � Apache 1.3. Apache 1.3 ����������� ������� ����� ��������, ����������� ���������
    ������� ���������. Apache 2.0 ������ ���������� ������� <code>libtool</code> �
    <code>autoconf</code>, ��� ������ ������ ������� �� ������ ����������� ��������
    � �������� �������� ����� (Open Source projects).</p>

</summary>

<seealso><a href="invoking.html">������ �������</a></seealso>
<seealso><a href="stopping.html">��������� � ����������</a></seealso>

<section id="overview"><title>������� ����� "��� ������������"</title>

    <table>
      <tr>
        <td><a href="#download">��������</a></td>

        <td><code>$ lynx
        http://www.apache.org/dist/httpd/httpd-2_0_<em>NN</em>.tar.gz</code>
        </td>
      </tr>

      <tr>
        <td><a href="#extract">����������</a></td>

        <td><code>$ gzip -d httpd-2_0_<em>NN</em>.tar.gz<br />
         $ tar xvf httpd-2_0_<em>NN</em>.tar</code> </td>
      </tr>

      <tr>
        <td><a href="#configure">����������������</a></td>

        <td><code>$ ./configure --prefix=<em>PREFIX</em></code>
        </td>
      </tr>

      <tr>
        <td><a href="#compile">��������������</a></td>

        <td><code>$ make</code> </td>
      </tr>

      <tr>
        <td><a href="#install">���������</a></td>

        <td><code>$ make install</code> </td>
      </tr>

      <tr>
        <td><a href="#customize">���������</a></td>

        <td><code>$ vi <em>PREFIX</em>/conf/httpd.conf</code> </td>
      </tr>

      <tr>
        <td><a href="#test">������� ������</a></td>

        <td><code>$ <em>PREFIX</em>/bin/apachectl start</code>
        </td>
      </tr>
    </table>

    <p><em>NN</em> ���������� �������� �� ������� ������� ����� ������,
    � ������ <em>PREFIX</em> ���� ������� ����, ��
    �������� ������ ���� ���������� ������. ���� <em>PREFIX</em> �� ������,
    �� ��������� �� ��������� ������������ � �������
    <code>/usr/local/apache2</code>.</p>

    <p>����� �������� ��� ����� �������������� � ��������� ������� �����������
    ����, ������ ���������� ��������� ������ � �������� ��������� ����������,
    �����������, ��� ���� ����� ��������� ������ �������.</p>
</section>

<section id="requirements"><title>����������</title>

    <p>����������, ����������� ��� �������� ������ �������:</p>

    <dl>
      <dt>�������� ������������</dt>
      <dd>���������, ��� �� ����� ���� ��� ��������� 50 MB
      ���������� ����� ��� ��������� ������. ����� ���������
      Apache �������� �������������� 10 MB. ������ ������ �����������
      ����� ����� �������� � �������� �� ��������� ������������ �
      ������������� ��������������� �������, �� �������� � �����������
      Apache.</dd>

      <dt>ANSI-C ���������� � ����������� ����� ������</dt>
      <dd>���������, ��� �� ����� ������� ���������� ANSI-C
      ����������. ������������� ������������ <a
      href="http://www.gnu.org/software/gcc/gcc.html">GNU C
      ���������� (GCC)</a> �� <a
      href="http://www.gnu.org/">Free Software Foundation (FSF)</a>
      (������ 2.7.2 ������ ����������). ���� � ��� ������ ����������,
      �� ��������, ������������ �� �� �������� ANSI. ��������� �����,
      ����� � ���������� ��������� <code>PATH</code> ��� ������ �������,
      ���������� �������� �������, ����������� ��� ������ (<code>make</code> � ������).</dd>

      <dt>������������� �������</dt>
      <dd>� ��������� ���������� HTTP ��������� ����������� �����.
      ������� ��� ���������� ��������, ��� ����� ���������� � �����
      ������� �������� ������������� �������. ������ ��� ���� �����
      ������������ ��������� <code>ntpdate</code> ��� <code>xntpd</code>,
      ���������� �� ������� ��������� ������������� �������
      (Network Time Protocol - NTP). ��� ��������� ����� ��������� ����������
      �� NTP � �������� ������������� �������, ���������� � ������ �������� Usenet <a
      href="news:comp.protocols.time.ntp">comp.protocols.time.ntp</a>,
      � ����� �������� <a href="http://www.eecis.udel.edu/~ntp/">�������� �������� NTP</a></dd>

      <dt><a href="http://www.perl.org/">Perl 5</a>
      [�������������]</dt>
      <dd>��� ���������� ��������� ��������������� ��������, ����� ��� <a
      href="programs/apxs.html">apxs</a> ��� <a href="programs/dbmmanage.html">dbmmanage</a>
      (������� �������� �� Perl), ��������� ������������� � ����� Perl
      (������ 5.003 ��� ���� ����������). ���� ���������������� ������
      `<code>configure</code>' �� ������ ��� � ����� �������, �� �� ��� �����
      ������� ������� � ���������� Apache 2.0 - � ���� ������ �� �����
      �������� ������ ������������� ���� ��������������� �������. ���� � �����
      ������� ����������� ��������� ��������������� � ����� Perl (�������� Perl 4 � Perl 5),
      �� ��� ���� ����� ������ <code>./configure</code> ������ ������, ���������
      ��� � ������ <code>--with-perl</code> (�������� �������� ����).</dd>
    </dl>
</section>

<section id="download"><title>��������</title>

    <p>Apache ����� ��������� �� <a
    href="http://httpd.apache.org/download.cgi">�������� �������� Apache HTTP Software
    Foundation</a>, �� ������� ����� ���������� ������ ��������� ���������� ��������.
    ����� �� ������� ����� ��������� ���������� ������ �������.</p>

    <p>����� ��������, �������� ���� ��� ����������� � �����������
    �������, ���������� ���������, ��� � ��� � ����� ������,
    ������������ ������ HTTP ������� Apache. ��� �����������
    ������������� ������ (tarball) �� ������������ PGP �������, ��� ��������, �
    ���� �������, ���������� ����������. ��-������, �� ������
    ��������� ���� <code>KEYS</code> �� <a
    href="http://www.apache.org/dist/httpd/">�������� ��������
    Apache Software Foundation</a>. (��� ���� ����� ���� ��������� � ���,
    ��� ��� ���� <code>KEYS</code> �� ��� �������, ��� ����� ����� ��
    ����������� ������������ Apache ��� ����� � �������
    �������� ������.) ����� ����� ����� ������������� � ���� ������ ����
    ������ ������ ����������� ��������� ������ (� ����������� ��
    ������ pgp):</p>

<example>$ pgp &lt; KEYS</example>

    <p>��� </p>

<example>$ gpg --import KEYS</example>

    <p>��������� ��� ����������� � ���������������� ��������
    ������ (tarball) � �������������� PGP �������, ������� ������
    ���� ����� �� <a href="http://www.apache.org/dist/httpd/">��������
    ���-������� Apache</a>. ���� � PGP �������� ����� �� �� ���, ���
    � ����� ������������ ���� ��������� <code>.asc</code>. ���������
    ����������� �����, ������ ��������� ������� (����� ��, ��� �������
    �� ������ pgp, �������������� � ����� �������):</p>

<example>$ pgp httpd-2_0_<em>NN</em>.tar.gz.asc</example>

    <p>���</p>

<example>$ gpg --verify httpd-2_0_<em>NN</em>.tar.gz.asc</example>

    <p>�� ������ ������� ���-�� �����:</p>

<example>Good signature from user "Martin Kraemer
      &lt;martin@apache.org&gt;".</example>

    <p>� ����������� �� ������������� ���������, ������������ � �����
    ���� ������ ������, �� ������ ����� �������� ��������� � ���,
    ��� ��������� ����� ������ � ���, ��� �� ����������, ����������
    ����������. ��� �� ������ ��� ���������� � ��� ������, ����
    �� ������� � ����������� ����� <code>KEYS</code>.</p>

</section>

<section id="extract"><title>����������</title>

    <p>���������� ������ �������� ����� Apache HTTP �������
    ����������� � ��� ���������������� ���������� �
    ���������������� (untarring):</p>

<example>
      $ gzip -d httpd-2_0_<em>NN</em>.tar.gz<br />
       $ tar xvf httpd-2_0_<em>NN</em>.tar
</example>

    <p>����� ���������� ���� ������ ����� ������ ����� �������
    � ��������� ������ ������������. �� ������ �����
    � ���� �������, ������ ��� ������� ������������� ������.</p>
</section>

<section id="configure"><title>���������������� ������ �������� �����</title>

    <p>��������� ��� ����������� � ���������������� ������ ��������
    ����� � ������������ � ��� ��������, �� ������� �� ��������������
    ������, � ������ ������������ �������. ��� �������� ��� ������
    ������� <code>configure</code>, �������������� � �������� ��������
    ������������. ������������, ����������� ������ �������� ����� �����������
    CVS, ������ ���������� � ����� ������� ������� <code>autoconf</code>
    � <code>libtool</code> � ��������� ��������� <code>buildconf</code>, ������
    ��� ��� ������ ����������� ���������. � ����������� �������� �������
    ����� ������ �� ���������.</p>

    <p>��� ���������������� ������ �������� �����, � ��������������
    �������� ���� ����� �� ���������, ������ ��������� ������ <code>./configure</code>
    ��� ����������. ��� ���� ����� �������� �������� �����, ������ <code>configure</code>
    ���������� ������� ����� ���������� � ����� ��������� ������. ��� ����
    ���������� ��������� ���������� ����� �������� <code>./configure</code>, � �� ����� ���
    ��������� ����� - �����. �������� ������ ����� ����� - ��� ������� ��������
    ���������, �� ���� ��� ����, �� �������� ������������ ����� ���������� Apache.
    �� ������ ���� ���������� ��� ������� ����� �����, ����������� ��� ������ ���������
    �������.</p>

    <p>��� ���� ����� �������� ������������� � �������� �������� ���������������� Apache,
    ����������� ����������� ���� �������� ������ ������� ������� <code>./configure</code>.
    ����� ������������ ��������� �������������
    ������ � ������� <code>/sw/pkg/apache</code>, ��������� ��������� ���������� �
	����������� ���������������� ��� ���� ������� ��������� ������, � ����������
	��� ��� ���������� ������ <module>mod_rewrite</module> � <module>mod_speling</module>,
    ������� ����� ����� ����� ������������ ����������� ��������� DSO.</p>

<example>
      $ CC="pgcc" CFLAGS="-O2" \<br />
       ./configure --prefix=/sw/pkg/apache \<br />
       --enable-rewrite=shared \<br />
       --enable-speling=shared
</example>

    <p>��� ����������, ������ <code>configure</code> ���������, ����������� �� � ����� �������
    ��� �����������, � ����� ������� Make-����� (Makefiles), ������� ����� ����� ������������
    ��� �������������� �������.</p>

    <p>�������� ������� ������ ������ ��� ���� ��������� ���������������� ������ - ���
    ��������� ������� <code>./configure --help</code>. �� ����� ����� �������� �������
    �������� ����������� ���� ��������� ����� � ���������� ���������.</p>

<section id="environment"><title>���������� ���������</title>

    <p>��������� <code>autoconf</code> ���������� ��� ���������� ��������� ��� ����������������
    ����� ������. ������, ����������� ���� ���������� ����� �������� ���� ����� ������ ������� -
    �������������� ��������� � ���������� �������������� ����� ������� ���� ����������. ���
    ���������� ����� �������� � ����� �� ������ ������� <code>configure</code>, �� ����� �����
    ��� ������� ���, ��� ���� �������� � ������� ����.</p>

    <dl>
      <dt><code>CC=...</code></dt>

      <dd>������� ������ ����������� � ����� C</dd>

      <dt><code>CPPFLAGS=...</code></dt>

      <dd>�������������� ����� ������������� � ����������� � ����� C.</dd>

      <dt><code>CFLAGS=...</code></dt>

      <dd>����� ������� � ����������� ����������� � ����� C.</dd>

      <dt><code>LDFLAGS=...</code></dt>

      <dd>�������������� ����� ��� ������������.</dd>

      <dt><code>LIBS=...</code></dt>

      <dd>���������� � ������������ ��������� (����� "<code>-L</code>" �
      "<code>-l</code>"), ������������ ������������.</dd>

      <dt><code>INCLUDES=...</code></dt>

      <dd>����, �� ������� ������ ������������ �����. ("<code>-I<em>dir</em></code>").</dd>

      <dt><code>TARGET=...</code> [�� ���������: <code>apache</code>]</dt>

      <dd>��� ������������ ����� ����� ������ �������</dd>

      <dt><code>NOTEST_CPPFLAGS=...</code></dt>

      <dt><code>NOTEST_CFLAGS=...</code></dt>

      <dt><code>NOTEST_LDFLAGS=...</code></dt>

      <dt><code>NOTEST_LIBS=...</code></dt>

      <dd>��� ���������� ��������� ��������� �� �� ����, ��� � �� �� ����� ����������,
      �� ��� ��������� <code>NOTEST</code>. ������� ����������� � ���, ��� ��� �����������
      � ����� ����� ����, ��� autoconf �������� ������������ ������������ ������������
      �����. ��� ��������� ������������ �� �����, ������� �� ������� ������ ��� ��������
      ������������, �� ��������� ������� ����������� ��� ������������� ������ �������.</dd>

      <dt><code>SHLIB_PATH=...</code></dt>

      <dd>����� ����������� � ������������, ������������ ���� � ����������� �����������.</dd>
    </dl>
</section>

<section id="output"><title>�����, ��������������� �������� ����� ��������� autoconf</title>

    <dl>
      <dt><code>--help</code></dt>

      <dd>������ ���������� �� ������������� ���������, ������� ��� ��������� �����, �����
      ���� ����� �� ��������� ������.</dd>

      <dt><code>--quiet</code></dt>

      <dd>������������� ����� ���������, ������������ � "<code>checking...</code>"</dd>

      <dt><code>--verbose</code></dt>

      <dd>������ ������ ���������� � �������� ����������������, ������� �����
      ����������� ������.</dd>
    </dl>
</section>

<section id="pathnames"><title>����</title>

    <p>� ��������� ����� ���������� ��� ������� ������� �����, �� �������
    Apache ��������� ���� �����. ������ ������ - ��� ���� ������� Apache
    �������, �� �������� �� �����������.</p>

    <dl>
      <dt><code>--prefix=<em>PREFIX</em></code> [�� ���������:
      <code>/usr/local/apache2</code>]</dt>

      <dd>���������� ����, �� �������� ����� ����������� ��������� Apache.</dd>
    </dl>

    <p>����� ����, ���������� ����������� ���������� ������������ - ��������� �����
    � ������ ���������� �������� �������.</p>

    <dl>
      <dt><code>--exec-prefix=<em>EPREFIX</em></code> [Default:
      <code><em>PREFIX</em></code>]</dt>

      <dd>���������� ����, �� �������� ����� ����������� ������������ - ���������
      �����.</dd>
    </dl>

    <p>������ ������ �������� ����� ������. �� ����������� � �������������
    ������ <code>config.layout</code>. ��������� ���� �����, ����� �������
    ������� ��������� ��� ������ ���� ������ Apache. ���� <code>config.layout</code>
    �������� ��������� �������� ����������������. ��������� ��� �������, �� ������
    ���� ��������� ����������� ������������ ���������.
	��������� ������ ��������� ������������
    � ���������� ������� <code>&lt;Layout FOO&gt;...&lt;/Layout&gt;</code>, ����� ����
    � ��� ����� ���������� ����������� ����� <code>FOO</code>.</p>

    <dl>
      <dt><code>--enable-layout=<em>LAYOUT</em></code></dt>

      <dd>���������� ����������� �����, ��������� � ����� <code>config.layout</code>,
      � ������� ��������� ��� ������������ ����.</dd>
    </dl>

</section>

<section id="modules"><title>������</title>

    <p>Apache - ��� ��������� ������. ������ ����� ��������
    ������� �������� � ���� �������. �������������� ����������������
    �������� ����������� �������. �� ����� �������� ������������
    �� ������ ������� �� ������, ������� ����� ��������������� ������ � ��������.
    ��� ���� ��������� ������� �� ������ ��������� � ���������������
    <a href="mod/index.html">������ �������</a>. ������, <a
    href="mod/module-dict.html#Status">������</a> ������� ���������
    ��� "�������", ������������� ������ � �������� �� ���������; ���� ���
    �� ����� ��������� ������� ������, �� ������ ���������� ��� ������� ���
    ������������ (������� �������, ��������, �������� <module>mod_userdir</module>).
    ������ � ������ �������� �� ������������� ������ � �������� �� ���������, � (� ������
    �������������) ������ ���� ��������� ��� ���������������� �������� (�������� ������ ������
	����� ��������� <module>mod_expires</module>).</p>

    <p>���� ��� ������� ������� Apache ������������ ����� - ���� ������. ������
    ����� ���� �������������� ��� <em>�����������</em>, ��� ���� �� ��� ����������
    ��������������� � ����������� ��� ������� Apache. ��� ��, ���� ���� ������������
    ������� ������������ ����������� ����������� ������� (Dynamic Shared Objects) �
    � <code>autoconf</code> ����� ����������, ��� ��� ���, �� ������ ����� ����
    �������������� ��� <em>������������</em>. DSO ������ �������� �������� �� ����
    �������, � ����� �������������� �������� � ����������� ��
    ���������������� �������� ������� ���������� (�� ���� ���������� �� ������
    ��� ���������� �������), ��������������� ������� <module>mod_so</module>.
    ������ mod_so ������������� ���������� � ���� �������, ���� ���� ��
    ���� ������ ������������� ��� ������������. ���� �� �� �� ������������ �������
    ������������ ������, �� ������, ����� ��� ������ ��� �� ��� �������� ��������
    � DSO ��������, �� ��� ���������������� ������� ��������� �����: <code>--enable-so</code>.</p>

    <dl>
      <dt><code>--enable-<em>MODULE</em>[=shared]</code></dt>

      <dd>������������� � �������� � ���� ������� ������ <em>MODULE</em>.
      <em>MODULE</em> - ��� <a
      href="mod/module-dict.html#ModuleIdentifier">������������� ������</a>, ������� �����
      ��������, �������� �� ����� ������, ���������� � ������������, ������ "_string". �����
      ������������� ������ ��� DSO, �������� ����� <code>=shared</code>.</dd>

      <dt><code>--disable-<em>MODULE</em></code></dt>

      <dd>������ <em>MODULE</em> �� ������ ������������� ������� (���� �� ���� � ���� ������).</dd>

      <dt><code>--enable-modules=<em>MODULE-LIST</em></code></dt>

      <dd>������������� � �������� � ���� ������� ������, �������������� ������� ��������� �
      ������ <em>MODULE-LIST</em>. �������� ������ ���������� ���� �� ����� ���������.</dd>

      <dt>
      <code>--enable-mods-shared=<em>MODULE-LIST</em></code></dt>

      <dd>������������� ������, �������������� ������� ��������� �
      ������ <em>MODULE-LIST</em>, ��� ������������.</dd>
    </dl>

    <p>��������, ����� �������� � ������ ������ <module>mod_dav</module> �
    <module>mod_info</module>, �� ������ ������������ ����</p>

<example>./configure --enable-dav --enable-info</example>

    <p>���� ������������� ���������� �������</p>

<example>./configure --enable-modules="dav info"</example>

    <p>� ���������� � ����� ���������� ����������� �������� ����� <code>all</code> ���
    <code>most</code>, ������� ����� ���� ������������ ��� �������������� ���� ��� �����������
    ������� �����. �� ������ ��������� �� ����� ������ ������������� ������, �������� ���������������
    ����� <code>--disable-<em>MODULE</em></code>. ��������, ��� ���� ����� �������� � ������ ������� ���
    ������ ��� DSO �� ����������� <module>mod_info</module>, �� ������ �������� ���������</p>

<example>
      ./configure --enable-mods-shared=all
      --disable-info
</example>

    <p>� ���������� � ������������ ������ �������, Apache 2.0 �������������
    ������ � ��������� <a href="mpm.html">������ - ���������� �������</a> (MPMs).
    ���� � ������ ���� �� - ������ ����� ���� ������������� ������ � ��������. ������
    �� - �������, ������������� �� ��������� ��� ������ ���������, ����� ����� � ���������������
    <a href="mpm.html">������� ������������</a>; �� - ������ �� ���������
    ����� �������� ��������� ������ ��������� ������ <code>configure</code></p>

    <dl>
      <dt><code>--with-mpm=<em>NAME</em></code></dt>

      <dd>��������������� ������ � �������� ����� �� - ������ � ������ <em>NAME</em>.</dd>
    </dl>
</section>

<section id="dbm"><title>DBM</title>

    <p>��������� ������ Apache, ��� �������� <module>mod_auth_dbm</module> � <module>mod_rewrite</module>
    (��������� <directive module="mod_rewrite">RewriteMap</directive>), ���������� � ����� ������ �������
    ���� ������, �������������� �� �������� ����/��������, ��� ����������� �������� ������� � ����������.
    ��������� SDBM ��� ������ �������� � ���� �������, ��� ��� ������������� ��� ������ ��������� ���� ��������
    ������. ���� ��� ����� ���� ������ ������� ����, �� ������ ������������ ��������� �����:</p>

<dl>
<dt><code>--with-gdbm[=<em>path</em>]</code></dt>
<dt><code>--with-ndbm[=<em>path</em>]</code></dt>
<dt><code>--with-berkeley-db[=<em>path</em>]</code></dt>

<dd>���� �� ������� �������� <em>path</em>, Apache ����� ������ ������������ ����� � ����������
� ����������� ���������. ����� �������� <em>path</em> �������� Apache ����������� ����� ��������������
������ � ��������� <em>path</em><code>/lib</code> � <em>path</em><code>/include</code>. ����� �����
������� ������������� ���� ��� ������������ ������ � ���������, ������� �� ����� ����� � �������.</dd>
</dl>
</section>


<section id="suexec"><title>Suexec</title>

    <p>������ � Apache ����� ����� ��������������� ��������� <a
    href="suexec.html">suexec</a>, ������� ��������� ����������
    ����� ������� �������� ��� ����������� ���������������� CGI
    ��������. ��� �� �����, ���� suexec ���������������� �����������,
    �� ����� ��������� ������������ ����� � ������� ������������
    �������. ������� �� ������ ����� ����������� ��������� <a href="suexec.html">������������
    suexec</a>, ���� ������ ������������ ��� ���������.</p>
</section>
</section>

<section id="compile"><title>������</title>

    <p>������ �� ������ �������������� � ������� ������ Apache,
    �������� ��������� �������:</p>

<example>$ make</example>

    <p>���������� �������� - �������������� ������� � ������� �������������
    (������������� �� ���������) �������� �������������� ��� ������
    �� ����� �������, ��� Pentium III/Linux 2.2. �������� ����� ������
    ����� �������� �� ������ ����������� ����������� � �� ����������
    �������, ������� �� ������ ������������� ������ � ��������.</p>
</section>

<section id="install"><title>���������</title>

    <p>������ ������� ����� ��� ��������� ������� � �������
    <em>PREFIX</em>, ������� ��� ������ ��� ���������������� Apache
    (�������� ���� ����� <code>--prefix</code>), ��������:</p>

<example>$ make install</example>

    <p>���� ������������� Apache ������ ���������� ������ �������, ��
    ������ ���������������� ����� � ��������� ����� ��������� ��� ���������.</p>
</section>

<section id="customize"><title>���������</title>

    <p>����� �� ������ ��������� ��� HTTP ������ Apache ����������� ��������������
    <a href="configuring.html">���������������� ������</a> � ��������
    <code><em>PREFIX</em>/conf/</code>.</p>

<example>$ vi <em>PREFIX</em>/conf/httpd.conf</example>

    <p>����������� �� ������������� Apache �� ������ ����� ���� �� ����������
    ������ � ���� �� ������� <a href="./">docs/manual/</a>, ���� �� �����������
    ����� Apache <a href="http://httpd.apache.org/docs-2.0/">http://httpd.apache.org/docs-2.0/</a>,
    ��� ������������ ����� ��������� ������ ������������ � ��� ����������� ���������� ����������
    �� ���� ��������� <a href="mod/directives.html">���������������� ����������</a>.</p>
</section>

<section id="test"><title>������������</title>

    <p>������ �� ������ <a href="invoking.html">���������</a> ���� HTTP ������ Apache,
    �������� ��������� �������:</p>

<example>$ <em>PREFIX</em>/bin/apachectl start</example>

    <p>� ���� ��� ������ �������, �� �� ������� ��������� ���� ������ ��������
    �� ������ <code>http://localhost/</code>. ��� - ��������, ������� �� �������,
    ��������� � �������� <directive module="core">DocumentRoot</directive> - �� ���������,
    ��� <code><em>PREFIX</em>/htdocs/</code>. ����� <a href="stopping.html">����������</a>
    ������ ��������� ��������:</p>

<example>$ <em>PREFIX</em>/bin/apachectl stop</example>
</section>

</manualpage>
